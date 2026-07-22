import os
import re
import sys
import json
import time
import subprocess
from playwright.sync_api import sync_playwright
from playwright_stealth.stealth import Stealth

SPIDER_DIR = "/opt/repos/rbm_crawlers/src"

DEFAULT_PATTERNS = [
    r'item_pattern=r\'\(<div\[\^>\]\*class="\[\^"\]\*product\[\^"\]\*"\[\^>\]\*>.*?</div>\)\'',
    r'item_pattern=r\'\(<div\[\^>\]\*>.*?</div>\)\'',
    r'item_pattern=r\'<div class="product">\''
]

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

def ask_ai(html):
    print("Calling Gemini AI to generate regex...")
    prompt_head = """You are a highly restricted data extraction API. Your ONLY function is to output a single, raw JSON object.
Extract the regex patterns for the e-commerce product listings in the following HTML.

HTML:
"""
    prompt_tail = """

CRITICAL INSTRUCTION: Based on the HTML above, provide exactly 4 regex patterns.
DO NOT OUTPUT ANY CONVERSATIONAL TEXT ("Here is the...", "It looks like...").
YOU MUST RESPOND WITH ONLY THIS EXACT JSON FORMAT (and nothing else):
{
  "item_pattern": "...",
  "url_regex": "...",
  "price_regex": "...",
  "title_regex": "..."
}
"""
    html_truncated = html[:150000] 
    final_prompt = prompt_head + html_truncated + prompt_tail
    
    cmd = ["agy", "--dangerously-skip-permissions", "-p", "Read STDIN and strictly follow the instructions to generate JSON."]
    try:
        process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        stdout, stderr = process.communicate(input=final_prompt)
        
        if process.returncode == 0:
            raw_out = stdout.strip()
            
            # Find JSON block using regex
            match = re.search(r'(\{.*\})', raw_out, re.DOTALL)
            if match:
                raw_out = match.group(1)
            
            try:
                data = json.loads(raw_out)
                return data
            except json.JSONDecodeError:
                print(f"Failed to decode AI output: {raw_out}")
                return None
        else:
            print(f"AI command failed: {stderr}")
            return None
    except Exception as e:
        print(f"Exception calling AI: {e}")
        return None

def tune_spider(filepath):
    with open(filepath, "r") as f:
        content = f.read()
    
    base_url_m = re.search(r'base_url="([^"]+)"', content)
    search_path_m = re.search(r'search_path=f?"([^"]+)"', content)
    
    if not (base_url_m and search_path_m):
        print("Could not find base_url or search_path.")
        return False
        
    base_url = base_url_m.group(1)
    search_path = search_path_m.group(1).replace("{search_term}", "harry potter")
    url = f"{base_url}/{search_path}" if not search_path.startswith("http") else search_path
    
    html = fetch_dom(url)
    if not html or "403 Forbidden" in html or "blocked" in html.lower():
        print("Failed to fetch valid DOM (blocked or empty).")
        return False
        
    regex_data = ask_ai(html)
    if not regex_data:
        return False
        
    print(f"Generated Regexes: {json.dumps(regex_data, indent=2)}")
    
    # Patch the file
    for key in ["item_pattern", "url_regex", "price_regex", "title_regex"]:
        if key in regex_data:
            # Use string.replace instead of re.sub to avoid escape parsing issues
            old_str_m = re.search(rf'{key}=r\'[^\']*\'|{key}=r"[^"]*"', content)
            if old_str_m:
                val_escaped = regex_data[key].replace("'", "\\'")
                new_val = f"{key}=r'{val_escaped}'"
                content = content[:old_str_m.start()] + new_val + content[old_str_m.end():]
            
    with open(filepath, "w") as f:
        f.write(content)
    
    print(f"Successfully tuned {os.path.basename(filepath)}!")
    return True

if __name__ == "__main__":
    import glob
    spider_files = glob.glob(os.path.join(SPIDER_DIR, "*_spider.py"))
    print(f"Found {len(spider_files)} spiders. Running AI tuner...")
    count = 0
    for file in spider_files:
        with open(file, "r") as f:
            c = f.read()
        if "HTMLSearchSpider" in c and ("item_pattern=r'(<div[^>]*class=\"[^\"]*product[^\"]*\"[^>]*>.*?</div>)'" in c or "item_pattern=r'(<div[^>]*>.*?</div>)'" in c):
            print(f"[{time.strftime('%X')}] Starting tuning for {os.path.basename(file)}")
            if tune_spider(file):
                count += 1
            print(f"[{time.strftime('%X')}] Finished tuning for {os.path.basename(file)}")
    print(f"Done AI tuning. Tuned {count} spiders.")
