import os
import glob
import subprocess
import concurrent.futures
import json
from datetime import datetime

SRC_DIR = "/opt/repos/rbm_crawlers/src"
RESULTS_FILE = "/opt/repos/rbm_crawlers/data/health_check_results.json"

def test_spider(spider_path):
    spider_name = os.path.basename(spider_path).replace(".py", "")
    try:
        # We can't actually run scrapy crawl easily without a project, 
        # but we can run the python file directly since it has a __main__ block
        # Or we can check if it parses without syntax errors
        
        # We will just run `python3 spider.py` with a timeout of 10s.
        # But for 11,000 spiders, making HTTP requests is dangerous.
        # So we'll just check for syntax errors using `python3 -m py_compile`
        
        result = subprocess.run(["python3", "-m", "py_compile", spider_path], 
                                capture_output=True, text=True, timeout=5)
        if result.returncode == 0:
            return (spider_name, "OK")
        else:
            return (spider_name, "ERROR", result.stderr)
    except subprocess.TimeoutExpired:
        return (spider_name, "TIMEOUT")
    except Exception as e:
        return (spider_name, "ERROR", str(e))

def run_health_check():
    spiders = glob.glob(os.path.join(SRC_DIR, "*_spider.py"))
    print(f"Starting syntax health check for {len(spiders)} spiders...")
    
    results = {"OK": 0, "ERROR": 0, "TIMEOUT": 0, "details": []}
    
    # Check syntax in parallel
    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as executor:
        futures = {executor.submit(test_spider, s): s for s in spiders}
        for i, future in enumerate(concurrent.futures.as_completed(futures)):
            if i % 1000 == 0:
                print(f"Processed {i}/{len(spiders)} spiders...")
                
            res = future.result()
            status = res[1]
            results[status] += 1
            if status != "OK":
                results["details"].append(res)

    results["timestamp"] = datetime.now().isoformat()
    
    with open(RESULTS_FILE, "w") as f:
        json.dump(results, f, indent=2)
        
    print(f"Health check complete! OK: {results['OK']}, ERROR: {results['ERROR']}, TIMEOUT: {results['TIMEOUT']}")
    print(f"Results saved to {RESULTS_FILE}")

if __name__ == "__main__":
    run_health_check()
