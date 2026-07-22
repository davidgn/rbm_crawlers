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
                    url = match.group(1).lower().replace('http://', '').replace('https://', '').replace('www.', '').rstrip('/')
                    url_to_files[url].append(filename)
        except Exception as e:
            pass

deleted_count = 0
for url, files in url_to_files.items():
    if len(files) > 1:
        # Keep the one with the shortest filename, or just sort alphabetically
        files_sorted = sorted(files, key=len)
        keep = files_sorted[0]
        to_delete = files_sorted[1:]
        
        for f in to_delete:
            path = os.path.join(spider_dir, f)
            print(f"Deleting duplicate for {url}: {f} (Keeping {keep})")
            os.remove(path)
            deleted_count += 1

print(f"Deleted {deleted_count} duplicate spiders.")
