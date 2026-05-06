from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            # Category 8322 is "Sách" (Books)
            response = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/categories?parent_id=8322");
                return await res.json();
            }''')
            
            print("Main Book Categories:")
            for item in response.get("data", []):
                print(f"- {item['name']}: {item.get('product_count', 0)}")
                
            # Let's also check if there are other foreign languages under "English Books" (320) or if there's another foreign language category
            print("\nSubcategories under 'English Books' (320):")
            eng_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/categories?parent_id=320");
                return await res.json();
            }''')
            for item in eng_res.get("data", []):
                print(f"- {item['name']}: {item.get('product_count', 0)}")
                
            # Is there a "Foreign Language" filter or facet on the main books page?
            # Let's get the facets for category 8322
            print("\nFacets for Books (8322):")
            facet_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&category=8322");
                return await res.json();
            }''')
            filters = facet_res.get("filters", [])
            for f in filters:
                if f.get("query_name") in ["language", "ngon_ngu"]:
                    print(f"Language Facet ({f.get('display_name')}):")
                    for val in f.get("values", []):
                        print(f"  - {val['display_value']}: {val['count']}")
                        
        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
