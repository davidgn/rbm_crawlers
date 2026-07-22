import os
import sys
import glob
import time
import random
import multiprocessing
import importlib.util
import traceback

CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

def load_class_from_file(filepath):
    module_name = os.path.basename(filepath)[:-3]
    spec = importlib.util.spec_from_file_location(module_name, filepath)
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    
    for attr_name in dir(module):
        attr = getattr(module, attr_name)
        if isinstance(attr, type) and attr.__module__ == module_name and attr.__name__.endswith("Spider"):
            return attr
    return None


import inspect

def run_spider_process(filepath, query, limit_pages):
    sys.path.append(CRAWLERS_DIR)
    try:
        spider_cls = load_class_from_file(filepath)
        if not spider_cls:
            print(f"[ERROR] Could not find spider class in {filepath}")
            sys.exit(1)
            
        sig = inspect.signature(spider_cls.__init__)
        kwargs = {}
        if 'search_term' in sig.parameters:
            kwargs['search_term'] = query
        elif 'query' in sig.parameters:
            kwargs['query'] = query
            
        if 'limit_pages' in sig.parameters:
            kwargs['limit_pages'] = limit_pages
            
        spider = spider_cls(**kwargs)
        spider.run()
        print(f"[SUCCESS] {filepath} finished.")
    except Exception as e:
        print(f"[ERROR] Exception in {filepath}:")
        traceback.print_exc()
        sys.exit(1)


def main():
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="harry potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--min-delay", type=int, default=5, help="Min delay between spiders in seconds")
    parser.add_argument("--max-delay", type=int, default=15, help="Max delay between spiders in seconds")
    parser.add_argument("--no-shuffle", action="store_true", help="Do not randomize spider order")
    args = parser.parse_args()

    spiders = glob.glob(os.path.join(CRAWLERS_DIR, "*_spider.py"))
    
    if not args.no_shuffle:
        random.shuffle(spiders)
        
    print(f"Loaded {len(spiders)} spiders. Commencing round-robin schedule...")
    print(f"Pacing: {args.min_delay}s - {args.max_delay}s between dispatches.")
    
    for i, filepath in enumerate(spiders):
        print(f"\n[{i+1}/{len(spiders)}] Dispatching {os.path.basename(filepath)}...")
        
        # Launch in a separate process to prevent memory leaks from 1000 Chromium instances
        p = multiprocessing.Process(target=run_spider_process, args=(filepath, args.query, args.limit_pages))
        p.start()
        p.join() # Wait for it to finish sequentially
        
        if p.exitcode != 0:
            print(f"[WARN] Spider process exited with code {p.exitcode}")
        
        if i < len(spiders) - 1:
            delay = random.randint(args.min_delay, args.max_delay)
            print(f"Sleeping for {delay} seconds to avoid global WAF correlation heuristics...")
            time.sleep(delay)

if __name__ == "__main__":
    main()
