from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn/nha-sach-tiki/c8322", timeout=30000, wait_until="domcontentloaded")
            page.wait_for_timeout(5000)
            
            # Extract category texts
            categories = page.evaluate('''() => {
                const links = document.querySelectorAll('a[href*="/c"]');
                return Array.from(links).map(a => a.innerText);
            }''')
            print("Categories:", categories)
            
        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
