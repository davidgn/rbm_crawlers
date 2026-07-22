import os

spiders = [
    # Faeroe Islands (2)
    ("faeroe_locanto", "Locanto_FO", "https://faeroe.locanto.com", "Faeroe Islands"),
    ("faeroe_ads", "FaeroeAds_FO", "https://www.faeroeads.com", "Faeroe Islands"),
    # Comoros (1)
    ("comoros_afribaba", "Afribaba_KM", "https://km.afribaba.com", "Comoros"),
    # Bhutan (1)
    ("bhutan_locanto", "Locanto_BT", "https://bhutan.locanto.com", "Bhutan"),
    # Macau (1)
    ("macau_locanto", "Locanto_MO", "https://macau.locanto.com", "Macau"),
    # Solomon Islands (1)
    ("solomon_locanto", "Locanto_SB", "https://solomon.locanto.com", "Solomon Islands"),
    # Suriname (1)
    ("suriname_mercadolibre", "MercadoLibre_SR", "https://www.mercadolibre.com.sr", "Suriname"),
    # Luxembourg (1)
    ("luxembourg_locanto", "Locanto_LU", "https://luxembourg.locanto.lu", "Luxembourg"),
    # Cape Verde (1)
    ("capeverde_afribaba", "Afribaba_CV", "https://cv.afribaba.com", "Cape Verde"),
    # Micronesia (1)
    ("micronesia_locanto", "Locanto_FM", "https://micronesia.locanto.com", "Micronesia"),
    # Maldives (1)
    ("maldives_locanto", "Locanto_MV", "https://maldives.locanto.com", "Maldives"),
    # Malta (1)
    ("malta_locanto", "Locanto_MT", "https://malta.locanto.com.mt", "Malta"),
    # Brunei (1)
    ("brunei_locanto", "Locanto_BN", "https://brunei.locanto.com", "Brunei"),
    # Iceland (1)
    ("iceland_locanto", "Locanto_IS", "https://iceland.locanto.com", "Iceland"),
    # Bahamas (1)
    ("bahamas_locanto", "Locanto_BS", "https://bahamas.locanto.com", "Bahamas"),
    # Belize (1)
    ("belize_locanto", "Locanto_BZ", "https://belize.locanto.com", "Belize"),
    # Vanuatu (1)
    ("vanuatu_locanto", "Locanto_VU", "https://vanuatu.locanto.com", "Vanuatu"),
    # Barbados (1)
    ("barbados_locanto", "Locanto_BB", "https://barbados.locanto.com", "Barbados"),
    # Samoa (1)
    ("samoa_locanto", "Locanto_WS", "https://samoa.locanto.com", "Samoa"),
    # Sao Tome and Principe (1)
    ("saotome_afribaba", "Afribaba_ST", "https://st.afribaba.com", "Sao Tome and Principe"),
    # Saint Lucia (1)
    ("saintlucia_locanto", "Locanto_LC", "https://saintlucia.locanto.com", "Saint Lucia"),
    # Dominica (1)
    ("dominica_locanto", "Locanto_DM", "https://dominica.locanto.com", "Dominica"),
    # Antigua and Barbuda (1)
    ("antigua_locanto", "Locanto_AG", "https://antigua.locanto.com", "Antigua and Barbuda"),
    # Kiribati (1)
    ("kiribati_locanto", "Locanto_KI", "https://kiribati.locanto.com", "Kiribati"),
    # Seychelles (1)
    ("seychelles_afribaba", "Afribaba_SC", "https://sc.afribaba.com", "Seychelles"),
    # Tonga (1)
    ("tonga_locanto", "Locanto_TO", "https://tonga.locanto.com", "Tonga"),
    # Grenada (1)
    ("grenada_locanto", "Locanto_GD", "https://grenada.locanto.com", "Grenada"),
    # Andorra (1)
    ("andorra_locanto", "Locanto_AD", "https://andorra.locanto.com", "Andorra"),
    # Greenland (1)
    ("greenland_locanto", "Locanto_GL", "https://greenland.locanto.com", "Greenland"),
    # Liechtenstein (1)
    ("liechtenstein_locanto", "Locanto_LI", "https://liechtenstein.locanto.com", "Liechtenstein"),
    # Monaco (1)
    ("monaco_locanto", "Locanto_MC", "https://monaco.locanto.com", "Monaco"),
    # San Marino (1)
    ("sanmarino_locanto", "Locanto_SM", "https://sanmarino.locanto.com", "San Marino"),
    # Palau (1)
    ("palau_locanto", "Locanto_PW", "https://palau.locanto.com", "Palau"),
    # Tuvalu (1)
    ("tuvalu_locanto", "Locanto_TV", "https://tuvalu.locanto.com", "Tuvalu"),
    # Nauru (1)
    ("nauru_locanto", "Locanto_NR", "https://nauru.locanto.com", "Nauru"),
    # Vatican City (1)
    ("vatican_locanto", "Locanto_VA", "https://vatican.locanto.com", "Vatican City"),
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

for file_prefix, platform_name, base_url, territory in spiders:
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

print(f"Successfully generated {len(spiders)} spiders.")
