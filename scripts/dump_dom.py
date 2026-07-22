from playwright.sync_api import sync_playwright
from playwright_stealth.stealth import Stealth
import sys

def fetch_dom(url, output_file):
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(
            user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
            viewport={'width': 1920, 'height': 1080}
        )
        page = context.new_page()
        Stealth().apply_stealth_sync(page)
        
        def route_interceptor(route):
            if route.request.resource_type in ["image", "media", "font", "stylesheet"]:
                route.abort()
            else:
                route.continue_()
        page.route("**/*", route_interceptor)
        
        try:
            page.goto(url, wait_until="domcontentloaded", timeout=20000)
        except Exception as e:
            print(f"Timeout on {url}, continuing...")
            
        page.wait_for_timeout(3000)
        content = page.content()
        with open(output_file, "w") as f:
            f.write(content)
        print(f"Saved {len(content)} bytes to {output_file}")
        browser.close()

if __name__ == "__main__":
    url = sys.argv[1]
    output_file = sys.argv[2]
    fetch_dom(url, output_file)
