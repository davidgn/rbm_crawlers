from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()
        print("Navigating to Booklane (Netlify mirror)...")
        page.goto("https://booklane.netlify.app/books", wait_until="networkidle", timeout=60000)
        
        # Wait for potential dynamic load
        page.wait_for_timeout(5000)
        
        print("Checking for product cards or links...")
        content = page.content()
        # Look for any links that might be books
        links = page.query_selector_all("a")
        for link in links:
            href = link.get_attribute("href")
            text = link.inner_text().strip()
            if href and ("/book/" in href or "/product/" in href or "/item/" in href):
                print(f"Found book link: {text} -> {href}")
        
        # Screenshot the page to see if it's empty
        page.screenshot(path="/home/davidgn/Downloads/booklane_netlify.png")
        print("Screenshot saved to /home/davidgn/Downloads/booklane_netlify.png")
        
        browser.close()

if __name__ == "__main__":
    run()
