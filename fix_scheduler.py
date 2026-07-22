import os
import re

scheduler_path = "/opt/repos/rbm_crawlers/scripts/round_robin_scheduler.py"
with open(scheduler_path, "r") as f:
    content = f.read()

# Replace the run_spider_process to inspect kwargs
new_func = """
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
"""

content = re.sub(r'def run_spider_process\(.*?\):\n(?:[ \t]+.*?\n)+', new_func + '\n', content)

with open(scheduler_path, "w") as f:
    f.write(content)

spider_path = "/opt/repos/rbm_crawlers/src/html_search_spider.py"
with open(spider_path, "r") as f:
    s_content = f.read()

s_content = s_content.replace(
    'price_currency: str = "INR",\n    ):',
    'price_currency: str = "INR",\n        **kwargs\n    ):'
)

with open(spider_path, "w") as f:
    f.write(s_content)

print("Fixes applied.")
