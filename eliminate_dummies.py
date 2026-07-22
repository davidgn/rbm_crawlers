import os
import re
import urllib.request
from urllib.error import URLError, HTTPError
import socket

# Timeout for DNS resolution and connections
socket.setdefaulttimeout(5)

spider_dir = '/opt/repos/rbm_crawlers/src'
url_pattern = re.compile(r'base_url\s*=\s*["\'](https?://[^"\']+)["\']')

deleted_count = 0
checked_count = 0

for filename in os.listdir(spider_dir):
    if not filename.endswith('spider.py'):
        continue
        
    path = os.path.join(spider_dir, filename)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
        
    match = url_pattern.search(content)
    if match:
        url = match.group(1)
        checked_count += 1
        
        # Test if the domain resolves by attempting a simple HEAD request
        req = urllib.request.Request(url, method='HEAD', headers={'User-Agent': 'Mozilla/5.0'})
        try:
            urllib.request.urlopen(req)
        except HTTPError as e:
            # 403 Forbidden, 401 Unauthorized, 405 Method Not Allowed, 503 etc. means the server EXISTS.
            # 404 Not Found means the path doesn't exist, but the domain might.
            pass
        except URLError as e:
            # DNS failure or connection refused means the dummy domain doesn't exist!
            print(f"Deleting dummy spider: {filename} (URL failed to resolve: {url})")
            os.remove(path)
            deleted_count += 1
        except Exception as e:
            # Other errors (e.g. SSL errors) usually mean the server exists but has issues.
            pass

print(f"Checked {checked_count} spiders. Eliminated {deleted_count} dummy strings.")
