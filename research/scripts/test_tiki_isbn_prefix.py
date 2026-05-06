from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            # Search for English ISBN prefixes (9780 and 9781)
            isbn_0_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=9780");
                return await res.json();
            }''')
            
            isbn_1_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=9781");
                return await res.json();
            }''')
            
            # Search for Chinese ISBN prefix (9787)
            isbn_7_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=9787");
                return await res.json();
            }''')

            # Search for Vietnamese ISBN prefix (978604)
            isbn_vn_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=978604");
                return await res.json();
            }''')
            
            print(f"ISBN Prefix 9780 (English) count: {isbn_0_res.get('paging', {}).get('total', 0)}")
            print(f"ISBN Prefix 9781 (English) count: {isbn_1_res.get('paging', {}).get('total', 0)}")
            print(f"ISBN Prefix 9787 (Chinese) count: {isbn_7_res.get('paging', {}).get('total', 0)}")
            print(f"ISBN Prefix 978604 (Vietnamese) count: {isbn_vn_res.get('paging', {}).get('total', 0)}")

        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
