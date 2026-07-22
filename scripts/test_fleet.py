import os
import sys
import importlib.util
import traceback

CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

# Let's test a sample of the recently created spiders
TEST_SPIDERS = [
    "amazon_spider.py",
    "kinokuniya_u_a_e_spider.py",
    "fnac_f_r_spider.py",
    "bol_n_l_spider.py",
    "empik_p_l_spider.py",
    "trade_me_n_z_spider.py",
    "fully_booked_p_h_spider.py",
    "readings_p_k_spider.py",
    "kyobo_k_r_spider.py",
    "rokomari_b_d_spider.py"
]

def load_class_from_file(filepath):
    module_name = os.path.basename(filepath)[:-3]
    spec = importlib.util.spec_from_file_location(module_name, filepath)
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    
    # Find the spider class
    for attr_name in dir(module):
        attr = getattr(module, attr_name)
        if isinstance(attr, type) and attr.__module__ == module_name and attr.__name__.endswith("Spider"):
            return attr
    return None

def main():
    sys.path.append(CRAWLERS_DIR)
    
    success_count = 0
    failure_count = 0
    empty_count = 0
    
    for filename in TEST_SPIDERS:
        filepath = os.path.join(CRAWLERS_DIR, filename)
        if not os.path.exists(filepath):
            print(f"[{filename}] MISSING")
            continue
            
        print(f"\n--- Testing {filename} ---")
        try:
            spider_cls = load_class_from_file(filepath)
            if not spider_cls:
                print("Failed to find spider class.")
                failure_count += 1
                continue
                
            spider = spider_cls(search_term="harry potter", limit_pages=1, limit_items=5)
            # Run the spider
            spider.run()
            
            # Check if it scraped anything
            if spider.items_scraped > 0:
                print(f"[SUCCESS] Scraped {spider.items_scraped} items.")
                success_count += 1
            else:
                print(f"[EMPTY] Spider ran but found 0 items.")
                empty_count += 1
                
        except Exception as e:
            print(f"[FAILED] Exception occurred:")
            traceback.print_exc()
            failure_count += 1

    print("\n==============================")
    print("DRY-RUN RESULTS:")
    print(f"Total Tested: {len(TEST_SPIDERS)}")
    print(f"Success (Items found): {success_count}")
    print(f"Empty (No items found/Blocked): {empty_count}")
    print(f"Errors (Crashes/Exceptions): {failure_count}")

if __name__ == "__main__":
    main()
