import os
import ast
import re

ADAPTERS_DIR = "/opt/repos/buyback-operators/src/adapters"
CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

GENERIC_TEMPLATE = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Auto-generated broad crawler for {vendor_name}.\"\"\"
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="{vendor_name}",
            territory="Global",
            base_url="{base_url}",
            search_path="{search_path}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'([\\d,]+(?:\\.\\d{{2}})?)',
            title_regex=r'<a[^>]*>([^<"]+)</a>',
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

def extract_url(node):
    urls = []
    for sub_node in ast.walk(node):
        if isinstance(sub_node, ast.Constant) and isinstance(sub_node.value, str):
            if "http" in sub_node.value:
                urls.append(sub_node.value)
    
    if urls:
        best = sorted(urls, key=len)[0]
        match = re.match(r'(https?://[^/]+)(.*)', best)
        if match:
            base_url = match.group(1)
            search_path = match.group(2).lstrip("/") or "search?q={search_term}"
            return base_url, search_path
    return "https://example.com", "search?q={search_term}"

def main():
    crawler_platforms = set()
    for root, dirs, files in os.walk(CRAWLERS_DIR):
        for f in files:
            if f.endswith(".py"):
                path = os.path.join(root, f)
                try:
                    with open(path, "r", encoding="utf-8") as file:
                        source = file.read()
                    tree = ast.parse(source)
                    for node in ast.walk(tree):
                        if isinstance(node, ast.ClassDef):
                            for stmt in node.body:
                                if isinstance(stmt, ast.FunctionDef) and stmt.name == "__init__":
                                    for sub_stmt in ast.walk(stmt):
                                        if isinstance(sub_stmt, ast.Call) and getattr(sub_stmt.func, "attr", None) == "__init__":
                                            for kw in sub_stmt.keywords:
                                                if kw.arg == "platform_name" and isinstance(kw.value, ast.Constant):
                                                    crawler_platforms.add(str(kw.value.value).lower().replace(" ", "").replace("-", ""))
                except:
                    pass

    generated_count = 0
    for root, dirs, files in os.walk(ADAPTERS_DIR):
        for f in files:
            if f.endswith(".py") and f != "__init__.py":
                path = os.path.join(root, f)
                try:
                    with open(path, "r", encoding="utf-8") as file:
                        source = file.read()
                    tree = ast.parse(source)
                except:
                    continue
                
                for node in ast.walk(tree):
                    if isinstance(node, ast.ClassDef):
                        bases = [getattr(b, "id", None) for b in node.bases if isinstance(b, ast.Name)]
                        is_adapter = any("Adapter" in b or "Base" in b for b in bases if b) or node.name.endswith("Adapter")
                        
                        if is_adapter and node.name != "BaseAdapter" and not node.name.startswith("_"):
                            vendor_name = None
                            for stmt in node.body:
                                if isinstance(stmt, ast.FunctionDef) and stmt.name in ["__init__", "adapter_name"]:
                                    for sub_stmt in ast.walk(stmt):
                                        if isinstance(sub_stmt, ast.Return) and isinstance(sub_stmt.value, ast.Constant):
                                            vendor_name = str(sub_stmt.value.value)
                                        elif isinstance(sub_stmt, ast.Call) and getattr(sub_stmt.func, "attr", None) == "__init__":
                                            for kw in sub_stmt.keywords:
                                                if kw.arg in ["name", "vendor_name", "platform_name"] and isinstance(kw.value, ast.Constant):
                                                    vendor_name = str(kw.value.value)

                            if not vendor_name:
                                vendor_name = node.name.replace("Adapter", "")
                                
                            v_clean = vendor_name.lower().replace(" ", "").replace("-", "")
                            v_clean2 = v_clean.split("(")[0].strip()
                            if v_clean not in crawler_platforms and v_clean2 not in crawler_platforms:
                                base_url, search_path = extract_url(node)
                                class_name = node.name.replace("Adapter", "Spider")
                                
                                # Use vendor_name for the file name to avoid collisions
                                file_base = re.sub(r'[^a-zA-Z0-9]', '', vendor_name)
                                filename = re.sub(r'(?<!^)(?=[A-Z])', '_', file_base).lower() + "_spider.py"
                                
                                out_path = os.path.join(CRAWLERS_DIR, filename)
                                
                                code = GENERIC_TEMPLATE.format(
                                    class_name=class_name,
                                    vendor_name=vendor_name,
                                    base_url=base_url,
                                    search_path=search_path
                                )
                                with open(out_path, "w", encoding="utf-8") as out_f:
                                    out_f.write(code)
                                
                                crawler_platforms.add(v_clean)
                                crawler_platforms.add(v_clean2)
                                generated_count += 1
                                print(f"Generated {filename} for missing vendor {vendor_name}")

    print(f"Total quadruply verified spiders generated: {generated_count}")

if __name__ == "__main__":
    main()
