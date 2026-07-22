import os
import re
import sys
import time
import glob
from bs4 import BeautifulSoup
from playwright.sync_api import sync_playwright
from playwright_stealth.stealth import Stealth

SPIDER_DIR = "/opt/repos/rbm_crawlers/src"

def fetch_dom(url):
    print(f"Fetching DOM for {url}...")
    try:
        with sync_playwright() as p:
            browser = p.chromium.launch(headless=True)
            context = browser.new_context(
                user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
                viewport={'width': 1920, 'height': 1080}
            )
            page = context.new_page()
            
            def route_interceptor(route):
                if route.request.resource_type in ["image", "media", "font", "stylesheet"]:
                    route.abort()
                else:
                    route.continue_()
            page.route("**/*", route_interceptor)
            Stealth().apply_stealth_sync(page)
            
            try:
                response = page.goto(url, wait_until="domcontentloaded", timeout=20000)
            except Exception as e:
                print(f"Timeout on {url}, continuing...")
                
            page.wait_for_timeout(3000)
            content = page.content()
            browser.close()
            return content
    except Exception as e:
        print(f"Failed to fetch DOM: {e}")
        return ""

def heuristic_tune(html):
    soup = BeautifulSoup(html, 'html.parser')
    
    # 1. Find all classes that occur more than 3 times
    class_counts = {}
    for tag in soup.find_all(['div', 'li', 'article']):
        classes = tag.get('class', [])
        if not classes: continue
        # use the first class as primary identifier
        cls = classes[0]
        if cls not in class_counts:
            class_counts[cls] = []
        class_counts[cls].append(tag)
        
    candidates = []
    for cls, tags in class_counts.items():
        if len(tags) >= 3:
            # check if they have a tags
            has_links = sum(1 for t in tags if t.find('a', href=True))
            # check if they have text with numbers (price)
            has_numbers = sum(1 for t in tags if re.search(r'\d', t.get_text()))
            
            if has_links >= 3 and has_numbers >= 3:
                candidates.append((cls, tags[0]))
                
    if not candidates:
        return None
        
    # pick the class with the most text length on average, but not too large (e.g. not the whole page)
    # usually product wrappers are between 100 and 2000 characters of HTML
    best_cls = None
    best_score = 0
    for cls, tag in candidates:
        html_len = len(str(tag))
        if 200 < html_len < 5000:
            score = len(class_counts[cls])
            if score > best_score:
                best_score = score
                best_cls = cls
                
    if not best_cls:
        # fallback to just most frequent
        candidates.sort(key=lambda x: len(class_counts[x[0]]), reverse=True)
        best_cls = candidates[0][0]

    # Generate simple regex based on best_cls
    regexes = {
        "item_pattern": fr'(<\\w+\\s+[^>]*class="[^"]*{best_cls}[^"]*"[^>]*>.*?</\\w+>)',
        "url_regex": r'href="([^"]+)"',
        "price_regex": r'([\d,]+(?:\.\d{2})?)',
        "title_regex": r'<a[^>]*>([^<]+)</a>'
    }
    return regexes

def process_spider(filepath):
    with open(filepath, "r") as f:
        content = f.read()
        
    # Check if it uses default regex
    if "item_pattern=r'(<div[^>]*class=\"[^\"]*product[^\"]*\"[^>]*>.*?</div>)'" not in content and \
       "item_pattern=r'(<div[^>]*>.*?</div>)'" not in content:
        # already tuned
        return
        
    base_url_m = re.search(r'base_url="([^"]+)"', content)
    search_path_m = re.search(r'search_path=f?"([^"]+)"', content)
    
    if not (base_url_m and search_path_m):
        return
        
    base_url = base_url_m.group(1)
    search_path = search_path_m.group(1).replace("{search_term}", "harry potter")
    url = f"{base_url}/{search_path}" if not search_path.startswith("http") else search_path
    
    html = fetch_dom(url)
    if not html: return
    
    regex_data = heuristic_tune(html)
    if not regex_data:
        print(f"Could not heuristically tune {filepath}")
        return
        
    print(f"Tuning {filepath} with class: {regex_data['item_pattern']}")
    
    for key in ["item_pattern", "url_regex", "price_regex", "title_regex"]:
        if key in regex_data:
            pattern = re.compile(rf'{key}=r\'[^\']*\'|{key}=r"[^"]*"')
            val_escaped = regex_data[key].replace("'", "\\'")
            new_val = f"{key}=r'{val_escaped}'"
            content = pattern.sub(new_val, content)
            
    with open(filepath, "w") as f:
        f.write(content)

if __name__ == "__main__":
    spider_files = glob.glob(os.path.join(SPIDER_DIR, "*_spider.py"))
    print(f"Found {len(spider_files)} spiders. Running heuristic tuner...")
    count = 0
    for file in spider_files:
        with open(file, "r") as f:
            c = f.read()
        if "HTMLSearchSpider" in c and ("item_pattern=r'(<div[^>]*class=\"[^\"]*product[^\"]*\"[^>]*>.*?</div>)'" in c or "item_pattern=r'(<div[^>]*>.*?</div>)'" in c):
            process_spider(file)
            count += 1
            if count >= 3: # Only test 3 for now
                break
    print("Done heuristic tuning.")
