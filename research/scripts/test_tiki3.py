from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            # Go to Tiki homepage to set cookies/headers
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            # Fetch the API using the page context
            response = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/categories?parent_id=8322");
                return await res.json();
            }''')
            
            for item in response.get("data", []):
                print(f"{item['name']}: {item.get('product_count', 'N/A')}")
                
        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
