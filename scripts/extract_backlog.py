
import json

targets = [
    "Universidad ORT Uruguay",
    "Zoological Society of Nigeria",
    "KNUST Press",
    "Universidade Nacional Timor Lorosae",
    "University of New South Wales Press",
    "University of Maribor Press",
    "King Abdulaziz University Press",
    "Universidad Autónoma de San Luis Potosí",
    "University of Botswana Press",
    "Aazem Publications",
    "Editora Universitária Universidade de Santiago",
    "NEI",
    "Academy of the Arabic Language Cairo",
    "FAPESP",
    "PNG University of Technology Press",
    "Chinese Physical Society",
    "BHU Press",
    "Adib Publishing House",
    "IMU",
    "Sabinet"
]

file_path = "/media/davidgn/data8/active_repos/unipress-parser-crawler-family/config/backlog_profiles.json"

with open(file_path, 'r') as f:
    data = json.load(f)

repairs = []

backlog = data.get('backlog', [])

for target in targets:
    found_item = None
    
    # Normalize target for comparison
    target_clean = target.replace(" ", "").lower()
    
    for item in backlog:
        site_name = item.get('site_name', '')
        site_name_clean = site_name.replace(" ", "").lower()
        
        title_suffixes = item.get('title_suffix_regexes', [])
        
        match = False
        if target_clean == site_name_clean:
            match = True
        else:
            for suffix in title_suffixes:
                if target.lower() in suffix.lower():
                    match = True
                    break
        
        if match:
            found_item = item
            break
            
    if found_item:
        repairs.append({
            "site_name": target,
            "base_url": found_item.get('base_url', ''),
            "book_url_regex": found_item.get('book_url_regex', ''),
            "discovery_mode": found_item.get('discovery_mode', '')
        })
    else:
        repairs.append({
            "site_name": target,
            "base_url": "NOT_FOUND_IN_JSON",
            "book_url_regex": "",
            "discovery_mode": ""
        })

print(json.dumps({"repairs": repairs}, indent=2))
