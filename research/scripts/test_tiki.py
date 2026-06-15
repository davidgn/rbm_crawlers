from playwright.sync_api import sync_playwright

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36")
        page = context.new_page()
        
        vietnamese_books_total = 0
        english_books_total = 0

        def handle_response(response):
            nonlocal vietnamese_books_total, english_books_total
            if "api/personalish/v1/blocks/listings" in response.url or "api/v2/products" in response.url:
                try:
                    data = response.json()
                    if "paging" in data:
                        total = data["paging"].get("total")
                        if "c316" in response.url or "category=316" in response.url:
                            vietnamese_books_total = total
                        elif "c320" in response.url or "category=320" in response.url:
                            english_books_total = total
                except Exception:
                    pass
                    
        page.on("response", handle_response)
        
        try:
            # Sách tiếng Việt (Vietnamese books) - Category 316
            page.goto("https://tiki.vn/sach-truyen-tieng-viet/c316", timeout=30000, wait_until="domcontentloaded")
            page.wait_for_timeout(5000)
            
            # Sách tiếng Anh (English books) - Category 320
            page.goto("https://tiki.vn/sach-tieng-anh/c320", timeout=30000, wait_until="domcontentloaded")
            page.wait_for_timeout(5000)
            
        except Exception as e:
            print("Error:", e)
            
        print(f"Vietnamese Books: {vietnamese_books_total}")
        print(f"English Books: {english_books_total}")
            
        browser.close()

if __name__ == "__main__":
    run()
