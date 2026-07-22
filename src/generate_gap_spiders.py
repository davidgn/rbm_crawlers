import os

spider_template = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Native spider for {platform_name} ({territory}).\"\"\"
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="{platform_name}",
            base_url="{base_url}",
            search_path="{search_path}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = {class_name}()
    spider.run()
"""

platforms = [
    ("zuzi_hr", "ZuziHrSpider", "ZUZI Shop", "https://zuzi.hr", "pretraga?q={query}", "Croatia"),
    ("superknjizara_hr", "SuperknjizaraHrSpider", "Superknjižara", "https://superknjizara.hr", "pretraga?q={query}", "Croatia"),
    ("libreriainternacional_cr", "LibreriaInternacionalCrSpider", "Librería Internacional", "https://www.libreriainternacional.com", "search?q={query}", "Costa Rica"),
    ("librosccs_ve", "LibrosccsVeSpider", "Libros.ccs", "https://librosccs.com", "buscar?q={query}", "Venezuela"),
    ("vitamine_dz", "VitamineDzSpider", "Vitamine.dz", "https://vitamine.dz", "search?q={query}", "Algeria"),
    ("buybook_ba", "BuybookBaSpider", "Buybook", "https://buybook.ba", "pretraga?q={query}", "Bosnia and Herzegovina"),
    ("moufflon_cy", "MoufflonCySpider", "Moufflon Bookshop", "https://moufflon.com.cy", "?s={query}&post_type=product", "Cyprus")
]

for name, cls_name, plat_name, base_url, search_path, terr in platforms:
    filename = f"/opt/repos/rbm_crawlers/src/{name}_spider.py"
    with open(filename, 'w') as f:
        f.write(spider_template.format(
            class_name=cls_name,
            platform_name=plat_name,
            base_url=base_url,
            search_path=search_path,
            territory=terr
        ))

print(f"Created {len(platforms)} spider files for gap coverage.")
