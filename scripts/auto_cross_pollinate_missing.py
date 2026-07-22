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
        # Prefer the shortest http string as the base url
        best = sorted(urls, key=len)[0]
        match = re.match(r'(https?://[^/]+)(.*)', best)
        if match:
            base_url = match.group(1)
            search_path = match.group(2).lstrip("/") or "search?q={search_term}"
            return base_url, search_path
    return "https://example.com", "search?q={search_term}"

def main():
    crawlers_classes = set()
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
                            crawlers_classes.add(node.name.lower())
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
                        if not bases:
                            continue
                            
                        is_adapter = any("Adapter" in b or "Base" in b for b in bases if b) or node.name.endswith("Adapter")
                        
                        if is_adapter:
                            expected_spider_name = node.name.replace("Adapter", "Spider").lower()
                            if expected_spider_name not in crawlers_classes and node.name != "BaseAdapter" and not node.name.startswith("_"):
                                base_url, search_path = extract_url(node)
                                
                                class_name = node.name.replace("Adapter", "Spider")
                                filename = re.sub(r'(?<!^)(?=[A-Z])', '_', class_name).lower() + ".py"
                                out_path = os.path.join(CRAWLERS_DIR, filename)
                                
                                code = GENERIC_TEMPLATE.format(
                                    class_name=class_name,
                                    vendor_name=node.name.replace("Adapter", ""),
                                    base_url=base_url,
                                    search_path=search_path
                                )
                                with open(out_path, "w", encoding="utf-8") as out_f:
                                    out_f.write(code)
                                
                                generated_count += 1
                                print(f"Generated {filename} as generic spider for {node.name}")

    print(f"Total generic spiders generated: {generated_count}")

if __name__ == "__main__":
    main()
