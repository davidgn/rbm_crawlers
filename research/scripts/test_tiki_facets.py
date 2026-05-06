from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
        page = context.new_page()
        
        try:
            page.goto("https://tiki.vn", timeout=30000, wait_until="domcontentloaded")
            
            # Let's get the facets for Vietnamese Books (316) to see what filters exist
            facet_res = page.evaluate('''async () => {
                const res = await fetch("https://tiki.vn/api/v2/products?limit=1&category=316");
                return await res.json();
            }''')
            filters = facet_res.get("filters", [])
            print("Available Facets in Vietnamese Books:")
            for f in filters:
                print(f"- {f.get('display_name')} ({f.get('query_name')})")
                
            print("\nValues for all facets:")
            for f in filters:
                print(f"\n{f.get('display_name')}:")
                for val in f.get("values", [])[:10]:
                    print(f"  - {val.get('display_value')}: {val.get('count')}")
                if len(f.get("values", [])) > 10:
                    print(f"  ... and {len(f.get('values', [])) - 10} more")
                        
        except Exception as e:
            print("Error:", e)
            
        browser.close()

if __name__ == "__main__":
    run()
