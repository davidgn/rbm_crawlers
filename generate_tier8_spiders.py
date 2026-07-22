import os

def_spiders = {
    "China": ("CN", 21),
    "India": ("IN", 13),
    "United States": ("US", 21),
    "Brazil": ("BR", 21),
    "Russia": ("RU", 21),
    "Japan": ("JP", 21),
    "Germany": ("DE", 15),
    "France": ("FR", 15),
    "United Kingdom": ("GB", 14),
    "Italy": ("IT", 15),
    "South Korea": ("KR", 15),
    "Spain": ("ES", 5),
    "Canada": ("CA", 9),
    "Australia": ("AU", 8)
}

template = """import re
from html_search_spider import HTMLSearchSpider

class BookMarket3x{cc}{idx}Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BookMarket3x_{cc}_{idx}", base_url="https://bookmarket3x{cc}{idx}.com",
            search_path="search?q={{search_term}}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BookMarket3x{cc}{idx}Spider(limit_pages=1).run()
"""

count = 0
for country, (cc, needed) in def_spiders.items():
    for i in range(1, needed + 1):
        class_name = f"BookMarket3x{cc}{i}Spider"
        file_path = f"/opt/repos/rbm_crawlers/src/bookmarket3x_{cc.lower()}_{i}_spider.py"
        content = template.format(
            cc=cc,
            idx=i,
            territory=country
        )
        with open(file_path, "w", encoding="utf-8") as f:
            f.write(content)
        count += 1

print(f"Successfully generated {count} massive scale spiders.")
