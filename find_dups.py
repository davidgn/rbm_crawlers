import os
import re
from collections import defaultdict

spider_dir = '/opt/repos/rbm_crawlers/src'
url_pattern = re.compile(r'base_url\s*=\s*["\']([^"\']+)["\']')

url_to_files = defaultdict(list)

for filename in os.listdir(spider_dir):
    if filename.endswith('spider.py'):
        path = os.path.join(spider_dir, filename)
        try:
            with open(path, 'r', encoding='utf-8') as f:
                content = f.read()
                match = url_pattern.search(content)
                if match:
                    # Normalize URL
                    url = match.group(1).lower().replace('http://', '').replace('https://', '').replace('www.', '').rstrip('/')
                    url_to_files[url].append(filename)
        except Exception as e:
            pass

duplicates = {url: files for url, files in url_to_files.items() if len(files) > 1}

for url, files in duplicates.items():
    print(f"URL: {url}")
    for f in files:
        print(f"  - {f}")
    print()

if not duplicates:
    print("No duplicates found.")
