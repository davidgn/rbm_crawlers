from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()
        page.goto("https://www.booksnbobs.com/preloved-books", wait_until="networkidle")
        page.wait_for_timeout(5000)
        with open("/home/davidgn/Downloads/booksnbobs_debug.html", "w") as f:
            f.write(page.content())
        print("HTML saved to /home/davidgn/Downloads/booksnbobs_debug.html")
        browser.close()

if __name__ == "__main__":
    run()
