from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            # Search for "sách tiếng Trung" (Chinese books)
            zh_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=sách+tiếng+trung");
                return await res.json();
            }''')
            
            # Search for "sách tiếng Nhật" (Japanese books)
            ja_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=sách+tiếng+nhật");
                return await res.json();
            }''')
            
            # Search for "sách tiếng Pháp" (French books)
            fr_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&q=sách+tiếng+pháp");
                return await res.json();
            }''')
            
            print(f"Chinese Books search count: {zh_res.get('paging', {}).get('total', 0)}")
            print(f"Japanese Books search count: {ja_res.get('paging', {}).get('total', 0)}")
            print(f"French Books search count: {fr_res.get('paging', {}).get('total', 0)}")

        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
