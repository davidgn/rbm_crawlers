import subprocess
import os
from pathlib import Path

src_dir = Path("/home/davidgn/active_repos/rbm_crawlers/src")
python_path = "/home/davidgn/.venvs/work/bin/python3"

spiders = [
    "kitabwalah_spider.py", "bookhub_spider.py", "bookmandee_spider.py",
    "clankart_spider.py", "bookflow_spider.py", "reread_spider.py",
    "pustakmart_spider.py", "bookaao_spider.py", "bookloop_spider.py",
    "bookmamu_spider.py", "booksya_spider.py", "bookbazar_spider.py",
    "antqcart_spider.py", "apnabook_spider.py", "askitab_spider.py",
    "govtjobsindia_spider.py", "graffittibooks_spider.py", "myoldbooks_spider.py",
    "padhaiseekers_spider.py", "pustakmarket_spider.py", "pustakstore_spider.py",
    "resellbooks_spider.py", "reusebooks_spider.py", "shelfswap_spider.py",
    "sumrux_spider.py", "bookspie_spider.py"
]

def run_test():
    results = []
    for spider in spiders:
        path = src_dir / spider
        if not path.exists():
            results.append((spider, "MISSING"))
            continue
            
        print(f"Testing {spider}...")
        try:
            # Run with a short timeout and limit pages to 1
            cmd = [python_path, str(path)]
            # We assume the __main__ block in each spider runs a small test
            # If it takes too long, we kill it
            proc = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=str(src_dir))
            
            output = proc.stdout + proc.stderr
            if "Scraped 0 items" in output:
                results.append((spider, "SUCCESS (0 items / Blocked)"))
            elif "Scraped" in output:
                # Find the number
                import re
                match = re.search(r"Scraped (\d+) items", output)
                count = match.group(1) if match else "some"
                results.append((spider, f"SUCCESS ({count} items)"))
            else:
                results.append((spider, "ERROR (Unknown output)"))
        except subprocess.TimeoutExpired:
            results.append((spider, "TIMEOUT"))
        except Exception as e:
            results.append((spider, f"CRASHED ({type(e).__name__})"))
            
    print("\n" + "="*40)
    print(f"{'Spider':<25} | {'Status'}")
    print("-" * 40)
    for spider, status in results:
        print(f"{spider:<25} | {status}")

if __name__ == "__main__":
    run_test()
