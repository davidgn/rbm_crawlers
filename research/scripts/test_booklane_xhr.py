from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()
        
        def handle_response(response):
            if "api" in response.url:
                print(f"XHR/Fetch: {response.url} [{response.status}]")
                try:
                    # Don't try to print large JSON, just check if it's returning data
                    print(f"  Body length: {len(response.text())}")
                except:
                    pass

        page.on("response", handle_response)
        
        print("Navigating to Booklane (Main site)...")
        page.goto("https://booklaneapp.com", wait_until="networkidle")
        page.wait_for_timeout(5000)
        
        browser.close()

if __name__ == "__main__":
    run()
