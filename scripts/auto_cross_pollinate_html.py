import os
import ast
import re

ADAPTERS_DIR = "/opt/repos/buyback-operators/src/adapters"
CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

HTML_TEMPLATE = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Broad crawler for {vendor_name} ({territory}).\"\"\"
    def __init__(self, search_term: str = "libros", limit_pages: int = 50, limit_items: int | None = None):
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

def extract_territory(file_path):
    basename = os.path.basename(file_path)
    match = re.search(r'([a-z]{2})_adapters\.py', basename)
    if match:
        code = match.group(1).upper()
        mapping = {
            "AR": "Argentina", "CL": "Chile", "CO": "Colombia", "PE": "Peru", "MX": "Mexico",
            "BR": "Brazil", "CR": "Costa Rica", "ES": "Spain", "FR": "France", "DE": "Germany",
            "IT": "Italy", "UK": "United Kingdom", "ZA": "South Africa", "NG": "Nigeria",
            "KE": "Kenya", "AU": "Australia", "NZ": "New Zealand", "JP": "Japan", "CN": "China"
        }
        return mapping.get(code, code)
    return "Unknown"

def get_currency_from_territory(territory):
    return {
        "Argentina": "ARS", "Chile": "CLP", "Colombia": "COP", "Peru": "PEN", "Mexico": "MXN",
        "Brazil": "BRL", "Costa Rica": "CRC", "Spain": "EUR", "France": "EUR", "Germany": "EUR",
        "Italy": "EUR", "United Kingdom": "GBP", "South Africa": "ZAR", "Nigeria": "NGN",
        "Kenya": "KES", "Australia": "AUD", "New Zealand": "NZD", "Japan": "JPY", "China": "CNY"
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
            if f.endswith("_adapters.py"):
                path = os.path.join(root, f)
                territory = extract_territory(path)
                currency = get_currency_from_territory(territory)
                with open(path, "r", encoding="utf-8") as file:
                    source = file.read()
                
                try:
                    tree = ast.parse(source)
                except:
                    continue
                
                for node in ast.walk(tree):
                    if isinstance(node, ast.ClassDef):
                        # Tiendanube
                        if any(b.id == "_TiendanubeBase" for b in node.bases if isinstance(b, ast.Name)):
                            base_url = None
                            vendor_name = node.name
                            for stmt in node.body:
                                if isinstance(stmt, ast.FunctionDef) and stmt.name == "__init__":
                                    for sub_stmt in ast.walk(stmt):
                                        if isinstance(sub_stmt, ast.Call) and getattr(sub_stmt.func, "attr", None) == "__init__":
                                            for kw in sub_stmt.keywords:
                                                if kw.arg == "base_url" and isinstance(kw.value, ast.Constant):
                                                    base_url = kw.value.value
                                                if kw.arg == "vendor_name" and isinstance(kw.value, ast.Constant):
                                                    vendor_name = kw.value.value
                            if base_url:
                                host = base_url.replace("https://", "").replace("http://", "").replace("www.", "")
                                if host.lower() not in existing_hosts:
                                    class_name = node.name.replace("Adapter", "Spider")
                                    filename = re.sub(r'(?<!^)(?=[A-Z])', '_', class_name).lower() + ".py"
                                    out_path = os.path.join(CRAWLERS_DIR, filename)
                                    
                                    code = TIENDANUBE_TEMPLATE.format(
                                        class_name=class_name,
                                        vendor_name=vendor_name,
                                        territory=territory,
                                        base_url=base_url,
                                        currency=currency
                                    )
                                    with open(out_path, "w", encoding="utf-8") as out_f:
                                        out_f.write(code)
                                    existing_hosts.add(host.lower())
                                    generated_count += 1
                                    print(f"Generated {filename} (Tiendanube) for {vendor_name}")

                        # SearchRedirectAdapter (HTMLSearchSpider)
                        elif any(b.id == "SearchRedirectAdapter" for b in node.bases if isinstance(b, ast.Name)):
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
                                        print(f"Generated {filename} (HTML) for {vendor_name}")

    print(f"Total HTML/Tiendanube auto-generated crawlers: {generated_count}")

if __name__ == "__main__":
    main()
