from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth

def run():
    print("Starting debug script")
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True, args=['--disable-blink-features=AutomationControlled'])
        context = browser.new_context(
            user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        )
        page = context.new_page()
        Stealth().apply_stealth_sync(page)

        def handle_response(response):
            # Print JSON responses to see what the API returns
            if response.request.resource_type in ["fetch", "xhr"]:
                try:
                    print(f"API Response [{response.status}]: {response.url}")
                    body = response.text()
                    print(f"Body snippet: {body[:200]}")
                except Exception:
                    pass

        page.on("response", handle_response)
        
        print("Navigating to ExploreData.html")
        page.goto("https://bookexchange.lk/ExploreData.html", wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(10000)
        
        print("Done waiting.")
        browser.close()

if __name__ == "__main__":
    run()
