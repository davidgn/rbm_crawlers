from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            response = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/categories?parent_id=320");
                return await res.json();
            }''')
            
            total = 0
            for item in response.get("data", []):
                count = item.get('product_count', 0)
                print(f"{item['name']}: {count}")
                total += int(count)
            print(f"Total calculated English books: {total}")
            
        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
