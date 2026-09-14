import json
import os
import re
import socket
import httpx
import ast

def extract_base_url(file_path):
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            content = f.read()
            match = re.search(r'BASE_URL\s*=\s*["\']([^"\']+)["\']', content)
            if match:
                return match.group(1)
            # fallback for Playwright base_url in super().__init__
            match = re.search(r'base_url\s*=\s*["\']([^"\']+)["\']', content)
            if match:
                return match.group(1)
    except:
        pass
    return None

def check_domain_alive(url):
    try:
        # Check DNS first
        domain = url.replace("https://", "").replace("http://", "").split("/")[0]
        socket.gethostbyname(domain)
        
        # Check HTTP
        headers = {"User-Agent": "Mozilla/5.0"}
        with httpx.Client(timeout=10.0, follow_redirects=True, verify=False) as client:
            resp = client.get(url, headers=headers)
            # A parked domain might return 200 but have GoDaddy or parking indicators
            if resp.status_code == 200:
                if "parking-lander" in resp.text or "parking" in resp.text.lower() or "domain is for sale" in resp.text.lower():
                    return False, "Parked domain detected"
                return True, "Alive"
            elif resp.status_code in (403, 429, 202):
                return True, f"Alive (bot protection: {resp.status_code})"
            return False, f"Status {resp.status_code}"
    except socket.gaierror:
        return False, "DNS resolution failed"
    except Exception as e:
        return False, str(e)

def process_logs():
    files_to_check = set()
    for log_file in ['logs/smoke_custom_2026-05-15.json', 'logs/smoke_configurable_2026-05-15.json']:
        if not os.path.exists(log_file):
            continue
        try:
            with open(log_file) as f:
                data = json.load(f)
                reports = data.get('reports', [])
                for r in reports:
                    if r.get('returncode') == 0 and r.get('output_items_added') == 0:
                        tail = r.get('stderr_tail', '').lower()
                        # Ignore those explicitly blocked by Cloudflare or 403 in the logs
                        if '403' not in tail and 'cloudflare' not in tail and '429' not in tail:
                            if os.path.exists(r.get('file')):
                                files_to_check.add(r.get('file'))
        except:
            pass

    print(f"Checking {len(files_to_check)} spiders for dead domains...")
    dead_spiders = []

    for idx, filepath in enumerate(files_to_check):
        url = extract_base_url(filepath)
        if not url:
            print(f"[{idx+1}/{len(files_to_check)}] {filepath}: No BASE_URL found")
            continue
            
        is_alive, reason = check_domain_alive(url)
        print(f"[{idx+1}/{len(files_to_check)}] {filepath} -> {url} : {'ALIVE' if is_alive else 'DEAD'} ({reason})")
        
        if not is_alive:
            dead_spiders.append((filepath, url, reason))

    print("\n--- DEAD SPIDERS TO DEPRECATE ---")
    for filepath, url, reason in dead_spiders:
        print(f"{filepath} ({url}): {reason}")
        
    return dead_spiders

if __name__ == "__main__":
    dead = process_logs()
    
    # Auto-archive dead spiders
    if dead:
        os.makedirs("src/deprecated", exist_ok=True)
        for filepath, url, reason in dead:
            filename = os.path.basename(filepath)
            dest = os.path.join("src", "deprecated", filename)
            os.rename(filepath, dest)
            print(f"Moved {filepath} to {dest}")
