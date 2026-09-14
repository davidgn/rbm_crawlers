#!/usr/bin/env python3
"""
RBM Crawlers Orchestrator
-------------------------
Collects all Python spiders in the src/ directory and runs them in parallel 
batches using a process pool to prevent memory exhaustion.
"""

import os
import glob
import time
import subprocess
import argparse
from concurrent.futures import ProcessPoolExecutor, as_completed

def run_spider(spider_path):
    """Executes a single spider script and returns its exit code."""
    name = os.path.basename(spider_path)
    try:
        # Run with timeout to prevent hung headless browsers or infinite loops
        result = subprocess.run(
            ["python3", spider_path],
            capture_output=True,
            text=True,
            timeout=300
        )
        if result.returncode == 0:
            return (name, "SUCCESS", None)
        else:
            return (name, "ERROR", result.stderr.strip().split('\n')[-1])
    except subprocess.TimeoutExpired:
        return (name, "TIMEOUT", "Exceeded 5 minutes")
    except Exception as e:
        return (name, "FAILED", str(e))

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers", type=int, default=4, help="Number of parallel workers")
    parser.add_argument("--limit", type=int, default=None, help="Limit number of spiders to run (for testing)")
    parser.add_argument("--target", type=str, default="src/*_spider.py", help="Glob pattern for spiders")
    args = parser.parse_args()

    spiders = sorted(glob.glob(args.target))
    if not spiders:
        print("No spiders found.")
        return

    if args.limit:
        spiders = spiders[:args.limit]

    print(f"[*] Orchestrator starting. Found {len(spiders)} spiders. Workers: {args.workers}")
    
    results = {"SUCCESS": 0, "ERROR": 0, "TIMEOUT": 0, "FAILED": 0}
    start_time = time.time()
    
    with ProcessPoolExecutor(max_workers=args.workers) as executor:
        future_to_spider = {executor.submit(run_spider, s): s for s in spiders}
        
        for i, future in enumerate(as_completed(future_to_spider), 1):
            name, status, msg = future.result()
            results[status] += 1
            
            progress = f"[{i}/{len(spiders)}]"
            if status == "SUCCESS":
                print(f"{progress} {name} -> {status}")
            else:
                print(f"{progress} {name} -> {status} ({msg})")

    elapsed = time.time() - start_time
    print("\n" + "="*40)
    print("ORCHESTRATOR RUN COMPLETE")
    print("="*40)
    print(f"Total time: {elapsed:.2f}s")
    print(f"Success: {results['SUCCESS']}")
    print(f"Errors:  {results['ERROR']}")
    print(f"Timeouts:{results['TIMEOUT']}")
    print(f"Failed:  {results['FAILED']}")

if __name__ == "__main__":
    main()
