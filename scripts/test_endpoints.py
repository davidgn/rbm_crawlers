import os
import re
import requests
import concurrent.futures

lib_dir = '/mnt/data7/home/davidgn/active_repos/openrefine-reconciliation-service/lib/'

# Regex for http/https URLs
url_regex = re.compile(r'https?://[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}(?::\d+)?(?:/[^\s"\']*)?')

urls = set()

for root, dirs, files in os.walk(lib_dir):
    for file in files:
        if file.endswith('.py'):
            try:
                with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
                    content = f.read()
                    matches = url_regex.findall(content)
                    for match in matches:
                        # Filter out schema URLs, localhost, example.com
                        if any(x in match for x in ['w3.org', 'purl.org', 'localhost', 'example.com', 'xmlns.com']):
                            continue
                        urls.add(match)
            except Exception as e:
                pass

print(f"Found {len(urls)} unique URLs to test.")

def check_url(url):
    try:
        # Use a short timeout and allow redirects
        res = requests.head(url, timeout=5, allow_redirects=True)
        if res.status_code < 400:
            return url, "ALIVE", res.status_code
        elif res.status_code in [401, 403, 405]:
            return url, "ALIVE_AUTH_REQUIRED", res.status_code
        else:
            # Some APIs might not support HEAD, try GET
            res = requests.get(url, timeout=5, allow_redirects=True, stream=True)
            if res.status_code < 400:
                return url, "ALIVE", res.status_code
            else:
                return url, "DEAD", res.status_code
    except requests.exceptions.Timeout:
        return url, "TIMEOUT", None
    except Exception as e:
        return url, "ERROR", str(e)

alive = []
dead = []

with concurrent.futures.ThreadPoolExecutor(max_workers=20) as executor:
    results = executor.map(check_url, urls)
    for url, status, code in results:
        if status in ["ALIVE", "ALIVE_AUTH_REQUIRED"]:
            alive.append((url, status, code))
        else:
            dead.append((url, status, code))

print(f"\n--- ALIVE ENDPOINTS ({len(alive)}) ---")
for url, status, code in sorted(alive):
    print(f"[{code}] {url}")

print(f"\n--- DEAD/TIMEOUT/ERROR ENDPOINTS ({len(dead)}) ---")
for url, status, code in sorted(dead):
    print(f"[{status}] {url} - Code/Error: {code}")
