import os

spiders_to_create = [
    # Malawi (2)
    ("malawi_locanto", "Locanto_MW", "https://malawi.locanto.com", "Malawi"),
    ("malawi_afribaba", "Afribaba_MW", "https://mw.afribaba.com", "Malawi"),
    # Zambia (1)
    ("zambia_jiji", "Jiji_ZM", "https://jiji.co.zm", "Zambia"),
    # Senegal (1)
    ("senegal_expat-dakar", "Expat_Dakar_SN", "https://www.expat-dakar.com", "Senegal"),
    # Ecuador (2)
    ("ecuador_mercadolibre", "MercadoLibre_EC", "https://www.mercadolibre.com.ec", "Ecuador"),
    ("ecuador_locanto", "Locanto_EC", "https://ecuador.locanto.com.ec", "Ecuador"),
    # Somalia (2)
    ("somalia_locanto", "Locanto_SO", "https://somalia.locanto.com", "Somalia"),
    ("somalia_somali_ads", "Somali_Ads_SO", "https://www.somaliads.com", "Somalia"),
    # Chad (2)
    ("chad_locanto", "Locanto_TD", "https://chad.locanto.com", "Chad"),
    ("chad_afribaba", "Afribaba_TD", "https://td.afribaba.com", "Chad"),
    # Cambodia (2)
    ("cambodia_khmer24", "Khmer24_KH", "https://www.khmer24.com", "Cambodia"),
    ("cambodia_locanto", "Locanto_KH", "https://cambodia.locanto.com", "Cambodia"),
    
    # Jordan (2)
    ("jordan_opensooq", "OpenSooq_JO", "https://jo.opensooq.com", "Jordan"),
    ("jordan_locanto", "Locanto_JO", "https://jordan.locanto.com", "Jordan"),
    # Cuba (2)
    ("cuba_revolico", "Revolico_CU", "https://www.revolico.com", "Cuba"),
    ("cuba_porlalivre", "PorLaLivre_CU", "https://porlalivre.com", "Cuba"),
    # Haiti (1)
    ("haiti_locanto", "Locanto_HT", "https://haiti.locanto.com", "Haiti"),
    # South Sudan (2)
    ("south_sudan_locanto", "Locanto_SS", "https://southsudan.locanto.com", "South Sudan"),
    ("south_sudan_juba_market", "Juba_Market_SS", "https://www.jubamarket.com", "South Sudan"),
    # Belgium (1)
    ("belgium_2dehands", "2dehands_BE", "https://www.2dehands.be", "Belgium"),
    # Dominican Republic (1)
    ("dominican_corotos", "Corotos_DO", "https://www.corotos.com.do", "Dominican Republic"),
    # Czech Republic (2)
    ("czech_bazos", "Bazos_CZ", "https://www.bazos.cz", "Czech Republic"),
    ("czech_sbazar", "Sbazar_CZ", "https://www.sbazar.cz", "Czech Republic")
]

template = """import re
from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="{platform_name}", base_url="{base_url}",
            search_path="search?q={{search_term}}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    {class_name}(limit_pages=1).run()
"""

for file_prefix, platform_name, base_url, territory in spiders_to_create:
    class_name = "".join(word.capitalize() for word in file_prefix.replace("-", "_").split("_")) + "Spider"
    file_path = f"/opt/repos/rbm_crawlers/src/{file_prefix}_spider.py"
    content = template.format(
        class_name=class_name,
        platform_name=platform_name,
        base_url=base_url,
        territory=territory
    )
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(content)

print(f"Successfully generated {len(spiders_to_create)} spiders.")
