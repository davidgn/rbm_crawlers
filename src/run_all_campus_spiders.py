#!/usr/bin/env python3
"""
Centralized Production Batch Runner & Parallel Orchestrator
Runs and manages execution across all 3,054 spiders in /opt/repos/rbm_crawlers/src.
"""
import os
import sys
import time
import argparse
import logging
import subprocess
import concurrent.futures
from datetime import datetime

SRC_DIR = "/opt/repos/rbm_crawlers/src"
LOG_DIR = "/opt/repos/rbm_crawlers/logs"
os.makedirs(LOG_DIR, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(os.path.join(LOG_DIR, "orchestrator.log")),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger("Orchestrator")

def discover_spiders(platform_filter: str | None = None) -> list[str]:
    """Discover all spider Python files in src/."""
    all_files = [f for f in os.listdir(SRC_DIR) if f.endswith("_spider.py")]
    excluded_base = {
        "base_spider.py", "mbs_search_spider.py", "magento_search_spider.py",
        "prism_rbs_search_spider.py", "redshelf_search_spider.py",
        "vitalsource_search_spider.py", "bookshop_org_search_spider.py",
        "netsuite_search_spider.py", "shopify_search_spider.py"
    }
    spider_files = [f for f in all_files if f not in excluded_base]

    if platform_filter:
        spider_files = [f for f in spider_files if platform_filter.lower() in f.lower()]

    return sorted(spider_files)

def run_spider_task(spider_file: str, query: str, limit_pages: int, limit_items: int) -> dict:
    """Run an individual spider as a subprocess and collect metrics."""
    spider_path = os.path.join(SRC_DIR, spider_file)
    cmd = [
        sys.executable, spider_path,
        "--query", query,
        "--limit-pages", str(limit_pages),
        "--limit-items", str(limit_items)
    ]

    start_time = time.time()
    try:
        res = subprocess.run(cmd, cwd=SRC_DIR, capture_output=True, text=True, timeout=60)
        duration = time.time() - start_time
        stdout = res.stdout or ""

        # Parse item count from spider logs
        items_scraped = 0
        for line in stdout.splitlines():
            if "Scraped" in line and "items" in line:
                try:
                    parts = line.split("Scraped")[1].split("items")[0].strip()
                    items_scraped = int(parts)
                except:
                    pass

        if res.returncode == 0:
            return {
                "file": spider_file,
                "status": "SUCCESS",
                "duration": round(duration, 2),
                "items": items_scraped,
                "error": None
            }
        else:
            err = res.stderr.strip() if res.stderr else res.stdout.strip()
            return {
                "file": spider_file,
                "status": "FAILED",
                "duration": round(duration, 2),
                "items": 0,
                "error": err[-150:]
            }
    except subprocess.TimeoutExpired:
        return {
            "file": spider_file,
            "status": "TIMEOUT",
            "duration": 60.0,
            "items": 0,
            "error": "Execution timed out (>60s)"
        }
    except Exception as e:
        return {
            "file": spider_file,
            "status": "ERROR",
            "duration": 0.0,
            "items": 0,
            "error": str(e)
        }

def main():
    parser = argparse.ArgumentParser(description="Centralized Production Spider Orchestrator")
    parser.add_argument("--platform", type=str, default=None, help="Filter by platform keyword (e.g. bncollege, redshelf, follett)")
    parser.add_argument("--workers", type=int, default=10, help="Number of parallel worker threads")
    parser.add_argument("--query", type=str, default="potter", help="Search query to run")
    parser.add_argument("--limit-pages", type=int, default=1, help="Max pages per spider")
    parser.add_argument("--limit-items", type=int, default=5, help="Max items per spider")
    parser.add_argument("--max-spiders", type=int, default=None, help="Limit total number of spiders to run")
    args = parser.parse_args()

    logger.info("=" * 80)
    logger.info(f"STARTING PRODUCTION SPIDER SWEEP AT {datetime.now().isoformat()}")
    logger.info("=" * 80)

    spiders = discover_spiders(args.platform)
    if args.max_spiders:
        spiders = spiders[:args.max_spiders]

    logger.info(f"Discovered {len(spiders)} eligible spiders for execution. Parallel Workers: {args.workers}")

    start_sweep = time.time()
    results = []

    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as executor:
        futures = [
            executor.submit(run_spider_task, s, args.query, args.limit_pages, args.limit_items)
            for s in spiders
        ]
        for future in concurrent.futures.as_completed(futures):
            res = future.result()
            results.append(res)
            logger.info(f"[{res['status']}] {res['file']} ({res['duration']}s, {res['items']} items)")

    total_time = round(time.time() - start_sweep, 2)
    successes = sum(1 for r in results if r["status"] == "SUCCESS")
    failures = len(results) - successes
    total_items = sum(r["items"] for r in results)

    logger.info("=" * 80)
    logger.info("PRODUCTION SWEEP SUMMARY")
    logger.info(f"Total Spiders Run : {len(results)}")
    logger.info(f"Successes         : {successes} ({round(successes/len(results)*100, 1) if results else 0}%)")
    logger.info(f"Failures/Timeouts : {failures}")
    logger.info(f"Total Items       : {total_items}")
    logger.info(f"Total Elapsed Time: {total_time}s")
    logger.info("=" * 80)

if __name__ == "__main__":
    main()
