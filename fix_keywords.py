import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
platform_pattern = re.compile(r'platform_name\s*=\s*["\']([^"\']+)["\']')

bad_keywords = [
    'auto', 'motor', 'imovei', 'property', 'realestate', 'bienes', 'vehic', 
    'mubawab', 'guazi', 'webmotors', 'zapimoveis', 'carros',
    'sneaker', 'snkr', 'shoes', 'fashion', 'clothing', 'clothes', 'luxury',
    'depop', 'poshmark', 'pegueibode', 'ficoupequeno', 'trashchic', 'pecarara',
    'zozoused', 'dewu', 'monokabu', 'plum', 'trenbe', 'vvic', 'snkrdunk',
    'feelway', 'vestiaire', 'grailed', 'stockx'
]

valid_platforms = []
deleted_count = 0

for filename in os.listdir(spider_dir):
    if not filename.endswith('spider.py'): continue
    path = os.path.join(spider_dir, filename)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
        t_match = territory_pattern.search(content)
        if not t_match: continue
        
        is_bad = any(bk in filename.lower() for bk in bad_keywords)
        p_match = platform_pattern.search(content)
        
        platform_name = ""
        if p_match:
            platform_name = p_match.group(1)
            if any(bk in platform_name.lower() for bk in bad_keywords):
                is_bad = True
                
        if is_bad:
            os.remove(path)
            deleted_count += 1
        elif platform_name:
            valid_platforms.append(platform_name.lower())

print(f"Deleted {deleted_count} non-book / fashion / auto spiders.")

# Now update the analyze script
analyze_path = '/opt/repos/rbm_crawlers/scripts/analyze_global_thin_coverage.py'
with open(analyze_path, 'r', encoding='utf-8') as f:
    analyze_content = f.read()

# Replace c2c_keywords = [ ... ] with the new list
start_idx = analyze_content.find("c2c_keywords = [")
end_idx = analyze_content.find("]", start_idx) + 1

new_list_str = "c2c_keywords = " + json.dumps(list(set(valid_platforms)))

new_content = analyze_content[:start_idx] + new_list_str + analyze_content[end_idx:]

with open(analyze_path, 'w', encoding='utf-8') as f:
    f.write(new_content)

print("Updated c2c_keywords with", len(set(valid_platforms)), "valid platforms.")
