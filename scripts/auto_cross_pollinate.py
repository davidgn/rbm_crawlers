import os
import ast
import re

ADAPTERS_DIR = "/opt/repos/buyback-operators/src/adapters"
CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

# Template for VtexSearchSpider
VTEX_TEMPLATE = """from vtex_search_spider import VtexSearchSpider

class {class_name}(VtexSearchSpider):
    \"\"\"Broad crawler for {vendor_name} ({territory}).\"\"\"
    def __init__(self, search_term: str = "libros", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="{vendor_name}",
            host="{host}",
            territory="{territory}",
            search_term=search_term,
            currency="{currency}",
            limit_pages=limit_pages,
            limit_items=limit_items
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

# Template for WooCommerceAPISpider
WOO_TEMPLATE = """from woocommerce_spider import WooCommerceAPISpider

class {class_name}(WooCommerceAPISpider):
    \"\"\"Broad crawler for {vendor_name} ({territory}).\"\"\"
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="{vendor_name}",
            base_url="{base_url}",
            territory="{territory}",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    {class_name}(limit_pages=args.limit_pages).run()
"""

def extract_territory(file_path):
    basename = os.path.basename(file_path)
    match = re.search(r'([a-z]{2})_adapters\.py', basename)
    if match:
        code = match.group(1).upper()
        # Basic mapping
        mapping = {
            "AR": "Argentina", "CL": "Chile", "CO": "Colombia", "PE": "Peru", "MX": "Mexico",
            "BR": "Brazil", "CR": "Costa Rica", "ES": "Spain", "FR": "France", "DE": "Germany",
            "IT": "Italy", "UK": "United Kingdom", "ZA": "South Africa", "NG": "Nigeria",
            "KE": "Kenya", "AU": "Australia", "NZ": "New Zealand", "JP": "Japan", "CN": "China"
        }
        return mapping.get(code, code)
    return "Unknown"

def main():
    existing_hosts = set()
    for root, dirs, files in os.walk(CRAWLERS_DIR):
        for f in files:
            if f.endswith(".py"):
                path = os.path.join(root, f)
                try:
                    with open(path, "r", encoding="utf-8") as file:
                        content = file.read()
                        # Extract all domains to avoid duplicates
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
                with open(path, "r", encoding="utf-8") as file:
                    source = file.read()
                
                try:
                    tree = ast.parse(source)
                except:
                    continue
                
                for node in ast.walk(tree):
                    if isinstance(node, ast.ClassDef):
                        # VTEX
                        if any(b.id == "_VtexBase" for b in node.bases if isinstance(b, ast.Name)):
                            host = None
                            vendor_name = node.name
                            currency = "USD"
                            for stmt in node.body:
                                if isinstance(stmt, ast.FunctionDef) and stmt.name == "__init__":
                                    for sub_stmt in ast.walk(stmt):
                                        if isinstance(sub_stmt, ast.Call) and getattr(sub_stmt.func, "attr", None) == "__init__":
                                            for kw in sub_stmt.keywords:
                                                if kw.arg == "host" and isinstance(kw.value, ast.Constant):
                                                    host = kw.value.value
                                                if kw.arg == "vendor_name" and isinstance(kw.value, ast.Constant):
                                                    vendor_name = kw.value.value
                                                if kw.arg == "currency" and isinstance(kw.value, ast.Constant):
                                                    currency = kw.value.value
                            if host and host.lower() not in existing_hosts:
                                class_name = node.name.replace("Adapter", "Spider")
                                filename = re.sub(r'(?<!^)(?=[A-Z])', '_', class_name).lower() + ".py"
                                out_path = os.path.join(CRAWLERS_DIR, filename)
                                
                                code = VTEX_TEMPLATE.format(
                                    class_name=class_name,
                                    vendor_name=vendor_name,
                                    territory=territory,
                                    host=host,
                                    currency=currency
                                )
                                with open(out_path, "w", encoding="utf-8") as out_f:
                                    out_f.write(code)
                                existing_hosts.add(host.lower())
                                generated_count += 1
                                print(f"Generated {filename} (VTEX) for {vendor_name}")

                        # WooCommerce API
                        elif any(b.id == "BaseAdapter" for b in node.bases if isinstance(b, ast.Name)):
                            api_url = None
                            vendor_name = node.name
                            for stmt in node.body:
                                if isinstance(stmt, ast.Assign):
                                    for target in stmt.targets:
                                        if getattr(target, "id", None) == "_API" and isinstance(stmt.value, ast.Constant):
                                            if "wp-json/wc/store" in stmt.value.value:
                                                api_url = stmt.value.value
                                elif isinstance(stmt, ast.FunctionDef) and stmt.name == "adapter_name":
                                    for sub_stmt in ast.walk(stmt):
                                        if isinstance(sub_stmt, ast.Return) and isinstance(sub_stmt.value, ast.Constant):
                                            vendor_name = sub_stmt.value.value
                            
                            if api_url:
                                match = re.match(r'(https?://[^/]+)', api_url)
                                if match:
                                    base_url = match.group(1)
                                    host = base_url.replace("https://", "").replace("http://", "").replace("www.", "")
                                    if host.lower() not in existing_hosts:
                                        class_name = node.name.replace("Adapter", "Spider")
                                        filename = re.sub(r'(?<!^)(?=[A-Z])', '_', class_name).lower() + ".py"
                                        out_path = os.path.join(CRAWLERS_DIR, filename)
                                        
                                        code = WOO_TEMPLATE.format(
                                            class_name=class_name,
                                            vendor_name=vendor_name,
                                            territory=territory,
                                            base_url=base_url
                                        )
                                        with open(out_path, "w", encoding="utf-8") as out_f:
                                            out_f.write(code)
                                        existing_hosts.add(host.lower())
                                        generated_count += 1
                                        print(f"Generated {filename} (WooCommerce) for {vendor_name}")
                                        
    print(f"Total auto-generated crawlers: {generated_count}")

if __name__ == "__main__":
    main()
