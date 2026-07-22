import os
import re

spider_dir = '/opt/repos/rbm_crawlers/src'

def fix_all():
    count = 0
    # regex to capture from item_pattern up to territory=
    # Note: DOTALL allows .* to match newlines
    pattern = re.compile(r'item_pattern=r\'.*?\',\s*url_regex=r\'.*?\',\s*price_regex=r\'.*?\',\s*title_regex=r\'.*?\',\s*territory=', re.DOTALL)
    pattern2 = re.compile(r'item_pattern=r".*?",\s*url_regex=r".*?",\s*price_regex=r".*?",\s*title_regex=r".*?",\s*territory=', re.DOTALL)
    
    for filename in os.listdir(spider_dir):
        if not filename.endswith('spider.py'): continue
        filepath = os.path.join(spider_dir, filename)
        with open(filepath, 'r') as f:
            content = f.read()
        
        if 'item_pattern=' in content:
            new_content = pattern.sub("selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory=", content)
            new_content = pattern2.sub("selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory=", new_content)
            with open(filepath, 'w') as f:
                f.write(new_content)
            count += 1
            print(f"Fixed {filename}")
    print(f"Total fixed: {count}")

if __name__ == '__main__':
    fix_all()
