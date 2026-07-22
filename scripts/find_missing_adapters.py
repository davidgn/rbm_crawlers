import os
import ast

ADAPTERS_DIR = "/opt/repos/buyback-operators/src/adapters"
CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

def main():
    # 1. Get all spider class names in rbm_crawlers
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

    # 2. Find all BaseAdapter classes in buyback-operators
    missing_adapters = []
    total_adapters = 0
    
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
                        # Does it inherit from BaseAdapter or something similar?
                        bases = [getattr(b, "id", None) for b in node.bases if isinstance(b, ast.Name)]
                        if not bases:
                            continue
                            
                        # If it's a known adapter base or explicitly ends with Adapter
                        is_adapter = any("Adapter" in b or "Base" in b for b in bases if b) or node.name.endswith("Adapter")
                        
                        if is_adapter:
                            total_adapters += 1
                            # Has it been cross-pollinated? (usually NameAdapter -> NameSpider)
                            expected_spider_name = node.name.replace("Adapter", "Spider").lower()
                            if expected_spider_name not in crawlers_classes and node.name != "BaseAdapter" and not node.name.startswith("_"):
                                missing_adapters.append((node.name, f))

    print(f"Total adapters found in buyback-operators: {total_adapters}")
    print(f"Missing from rbm_crawlers: {len(missing_adapters)}")
    for name, f in missing_adapters:
        print(f"  - {name} (in {f})")

if __name__ == "__main__":
    main()
