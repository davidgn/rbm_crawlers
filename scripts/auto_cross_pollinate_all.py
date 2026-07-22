import os
import ast
import re

ADAPTERS_DIR = "/opt/repos/buyback-operators/src/adapters"
CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

HTML_TEMPLATE = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Broad crawler for {vendor_name} ({territory}).\"\"\"
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="{vendor_name}",
            territory="{territory}",
            base_url="{base_url}",
            search_path="{search_path}",
            currency="{currency}",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'(?:\\$|{currency}|)[\\s]*([\\d,]+(?:\\.\\d{{2}})?)',
            title_regex=r'(?:title="|<h[1-6][^>]*>|<a[^>]*>)([^<"]+)(?:"|</h[1-6]>|</a>)',
            isbn_regex=r'(97[89]\\d{{10}})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    {class_name}(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
"""

TIENDANUBE_TEMPLATE = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Broad crawler for {vendor_name} ({territory}) - Tiendanube.\"\"\"
    def __init__(self, search_term: str = "libros", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="{vendor_name}",
            territory="{territory}",
            base_url="{base_url}",
            search_path="search?q={{search_term}}",
            currency="{currency}",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<script[^>]*application/ld\\+json[^>]*>.*?</script>)',
            url_regex=r'"url"\\s*:\\s*"([^"]+)"',
            price_regex=r'"price"\\s*:\\s*"([\\d,.]+)"',
            title_regex=r'"name"\\s*:\\s*"([^"]+)"',
            isbn_regex=r'(97[89]\\d{{10}})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    {class_name}(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
"""

def extract_territory(class_name, vendor_name, file_path):
    name = class_name.upper() + vendor_name.upper() + file_path.upper()
    if "AU" in name or "FISH" in name or "QBD" in name: return "Australia"
    if "NZ" in name: return "New Zealand"
    if "ZA" in name or "SOUTHAFRICA" in name: return "South Africa"
    if "KR" in name or "KOREA" in name: return "South Korea"
    if "JP" in name or "JAPAN" in name: return "Japan"
    if "TW" in name or "TAIWAN" in name: return "Taiwan"
    if "ID" in name: return "Indonesia"
    if "MY" in name: return "Malaysia"
    if "SG" in name: return "Singapore"
    if "PH" in name: return "Philippines"
    if "VN" in name: return "Vietnam"
    if "TH" in name: return "Thailand"
    if "SA" in name or "JARIR" in name: return "Saudi Arabia"
    if "AE" in name or "MAGRUDY" in name: return "UAE"
    if "EG" in name: return "Egypt"
    if "KE" in name: return "Kenya"
    if "NG" in name: return "Nigeria"
    if "AR" in name: return "Argentina"
    if "CL" in name: return "Chile"
    if "CO" in name: return "Colombia"
    if "PE" in name: return "Peru"
    if "MX" in name: return "Mexico"
    if "BR" in name: return "Brazil"
    if "CR" in name: return "Costa Rica"
    if "ES" in name or "SPAIN" in name: return "Spain"
    if "FR" in name or "FRANCE" in name: return "France"
    if "DE" in name or "GERMANY" in name: return "Germany"
    if "IT" in name or "ITALY" in name: return "Italy"
    if "UK" in name or "BRITAIN" in name: return "United Kingdom"
    if "CZ" in name: return "Czechia"
    if "RO" in name: return "Romania"
    if "BG" in name: return "Bulgaria"
    if "HR" in name: return "Croatia"
    if "PL" in name: return "Poland"
    if "HU" in name: return "Hungary"
    if "SE" in name: return "Sweden"
    if "FI" in name: return "Finland"
    if "NO" in name: return "Norway"
    if "DK" in name: return "Denmark"
    return "Global"

def get_currency_from_territory(territory):
    return {
        "Argentina": "ARS", "Chile": "CLP", "Colombia": "COP", "Peru": "PEN", "Mexico": "MXN",
        "Brazil": "BRL", "Costa Rica": "CRC", "Spain": "EUR", "France": "EUR", "Germany": "EUR",
        "Italy": "EUR", "United Kingdom": "GBP", "South Africa": "ZAR", "Nigeria": "NGN",
        "Kenya": "KES", "Australia": "AUD", "New Zealand": "NZD", "Japan": "JPY", "China": "CNY",
        "South Korea": "KRW", "Taiwan": "TWD", "Indonesia": "IDR", "Malaysia": "MYR",
        "Singapore": "SGD", "Philippines": "PHP", "Vietnam": "VND", "Thailand": "THB",
        "Saudi Arabia": "SAR", "UAE": "AED", "Egypt": "EGP", "Czechia": "CZK", "Romania": "RON",
        "Bulgaria": "BGN", "Croatia": "EUR", "Poland": "PLN", "Hungary": "HUF", "Sweden": "SEK",
        "Finland": "EUR", "Norway": "NOK", "Denmark": "DKK"
    }.get(territory, "USD")

def main():
    existing_hosts = set()
    for root, dirs, files in os.walk(CRAWLERS_DIR):
        for f in files:
            if f.endswith(".py"):
                path = os.path.join(root, f)
                try:
                    with open(path, "r", encoding="utf-8") as file:
                        content = file.read()
                        hosts = re.findall(r'https?://(?:www\.)?([^/"\']+)', content)
                        existing_hosts.update([h.lower() for h in hosts])
                except:
                    pass

    generated_count = 0
    for root, dirs, files in os.walk(ADAPTERS_DIR):
        for f in files:
            if f.endswith(".py") and f != "__init__.py":
                path = os.path.join(root, f)
                with open(path, "r", encoding="utf-8") as file:
                    source = file.read()
                
                try:
                    tree = ast.parse(source)
                except:
                    continue
                
                for node in ast.walk(tree):
                    if isinstance(node, ast.ClassDef):
                        # SearchRedirectAdapter (HTMLSearchSpider)
                        if any(getattr(b, "id", None) == "SearchRedirectAdapter" for b in node.bases if isinstance(b, ast.Name)):
                            search_url = None
                            vendor_name = node.name
                            for stmt in node.body:
                                if isinstance(stmt, ast.FunctionDef) and stmt.name == "__init__":
                                    for sub_stmt in ast.walk(stmt):
                                        if isinstance(sub_stmt, ast.Call) and getattr(sub_stmt.func, "attr", None) == "__init__":
                                            for kw in sub_stmt.keywords:
                                                if kw.arg == "search_url" and isinstance(kw.value, ast.Constant):
                                                    search_url = kw.value.value
                                                if kw.arg == "name" and isinstance(kw.value, ast.Constant):
                                                    vendor_name = kw.value.value
                            if search_url:
                                match = re.match(r'(https?://[^/]+)/(.*)', search_url)
                                if match:
                                    base_url = match.group(1)
                                    search_path = match.group(2).replace("{query}", "{search_term}").replace("page=1", "page={page}")
                                    host = base_url.replace("https://", "").replace("http://", "").replace("www.", "")
                                    if host.lower() not in existing_hosts:
                                        territory = extract_territory(node.name, vendor_name, path)
                                        currency = get_currency_from_territory(territory)
                                        class_name = node.name.replace("Adapter", "Spider")
                                        filename = re.sub(r'(?<!^)(?=[A-Z])', '_', class_name).lower() + ".py"
                                        out_path = os.path.join(CRAWLERS_DIR, filename)
                                        
                                        code = HTML_TEMPLATE.format(
                                            class_name=class_name,
                                            vendor_name=vendor_name,
                                            territory=territory,
                                            base_url=base_url,
                                            search_path=search_path,
                                            currency=currency
                                        )
                                        with open(out_path, "w", encoding="utf-8") as out_f:
                                            out_f.write(code)
                                        existing_hosts.add(host.lower())
                                        generated_count += 1
                                        print(f"Generated {filename} (HTML) for {vendor_name} ({territory})")

    print(f"Total sweeping auto-generated crawlers: {generated_count}")

if __name__ == "__main__":
    main()
