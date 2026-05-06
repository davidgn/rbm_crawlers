from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            list_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=5&category=320");
                return await res.json();
            }''')
            
            product_ids = [p.get('id') for p in list_res.get('data', [])]
            print("Product IDs:", product_ids)
            
            for pid in product_ids:
                detail_res = page.evaluate(f'''async () => {{
                    const res = await fetch("https://tiki.vn/api/v2/products/{pid}");
                    return await res.json();
                }}''')
                
                isbn = None
                for spec in detail_res.get('specifications', []):
                    for attr in spec.get('attributes', []):
                        if attr.get('code') in ['isbn', 'barcode'] or 'isbn' in attr.get('name', '').lower() or 'mã' in attr.get('name', '').lower() or 'barcode' in attr.get('name', '').lower():
                            isbn = attr.get('value')
                
                print(f"Product {pid}: {detail_res.get('name')}")
                print(f"ISBN/Barcode: {isbn}")
                print([attr.get('name') for spec in detail_res.get('specifications', []) for attr in spec.get('attributes', [])])
                print("---")
            
        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
