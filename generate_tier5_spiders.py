import os

spiders = [
    # Paraguay (4)
    ("paraguay_locanto", "Locanto_PY", "https://paraguay.locanto.com.py", "Paraguay"),
    ("paraguay_mercadolibre", "MercadoLibre_PY", "https://www.mercadolibre.com.py", "Paraguay"),
    ("paraguay_clasipar", "Clasipar_PY", "https://clasipar.paraguay.com", "Paraguay"),
    ("paraguay_encuentra24", "Encuentra24_PY", "https://www.encuentra24.com/paraguay", "Paraguay"),
    
    # Nicaragua (4)
    ("nicaragua_encuentra24", "Encuentra24_NI", "https://www.encuentra24.com/nicaragua", "Nicaragua"),
    ("nicaragua_mercadolibre", "MercadoLibre_NI", "https://www.mercadolibre.com.ni", "Nicaragua"),
    ("nicaragua_locanto", "Locanto_NI", "https://nicaragua.locanto.com.ni", "Nicaragua"),
    ("nicaragua_clasificados", "Clasificados_NI", "https://www.clasificados.com.ni", "Nicaragua"),
    
    # El Salvador (4)
    ("elsalvador_mercadolibre", "MercadoLibre_SV", "https://www.mercadolibre.com.sv", "El Salvador"),
    ("elsalvador_locanto", "Locanto_SV", "https://elsalvador.locanto.com.sv", "El Salvador"),
    ("elsalvador_encuentra24", "Encuentra24_SV", "https://www.encuentra24.com/el-salvador", "El Salvador"),
    ("elsalvador_clasificados", "Clasificados_SV", "https://www.clasificados.com.sv", "El Salvador"),
    
    # Oman (4)
    ("oman_opensooq", "OpenSooq_OM", "https://om.opensooq.com", "Oman"),
    ("oman_olx", "OLX_OM", "https://www.olx.com.om", "Oman"),
    ("oman_locanto", "Locanto_OM", "https://oman.locanto.com", "Oman"),
    ("oman_dubizzle", "Dubizzle_OM", "https://oman.dubizzle.com", "Oman"),
    
    # Bosnia (2)
    ("bosnia_olx", "OLX_BA", "https://olx.ba", "Bosnia"),
    ("bosnia_locanto", "Locanto_BA", "https://bosnia.locanto.com", "Bosnia"),
    
    # Qatar (2)
    ("qatar_mazadqatar", "MazadQatar_QA", "https://mazadqatar.com", "Qatar"),
    ("qatar_qatar_living", "QatarLiving_QA", "https://www.qatarliving.com/classifieds", "Qatar"),
    
    # Sierra Leone (3)
    ("sierraleone_locanto", "Locanto_SL", "https://sierraleone.locanto.com", "Sierra Leone"),
    ("sierraleone_afribaba", "Afribaba_SL", "https://sl.afribaba.com", "Sierra Leone"),
    ("sierraleone_saloneads", "SaloneAds_SL", "https://www.saloneads.com", "Sierra Leone"),
    
    # Togo (3)
    ("togo_coinafrique", "CoinAfrique_TG", "https://tg.coinafrique.com", "Togo"),
    ("togo_locanto", "Locanto_TG", "https://togo.locanto.com", "Togo"),
    ("togo_afribaba", "Afribaba_TG", "https://tg.afribaba.com", "Togo"),
    
    # Laos (3)
    ("laos_locanto", "Locanto_LA", "https://laos.locanto.com", "Laos"),
    ("laos_yula", "Yula_LA", "https://www.yula.la", "Laos"),
    ("laos_khmer24", "Khmer24_LA", "https://www.khmer24.com/laos", "Laos"),
    
    # Turkmenistan (3)
    ("turkmenistan_locanto", "Locanto_TM", "https://turkmenistan.locanto.com", "Turkmenistan"),
    ("turkmenistan_vestnik", "Vestnik_TM", "https://vestniktm.com", "Turkmenistan"),
    ("turkmenistan_tmay", "Tmay_TM", "https://tmay.com.tm", "Turkmenistan"),
    
    # Libya (3)
    ("libya_opensooq", "OpenSooq_LY", "https://ly.opensooq.com", "Libya"),
    ("libya_locanto", "Locanto_LY", "https://libya.locanto.com", "Libya"),
    ("libya_afribaba", "Afribaba_LY", "https://ly.afribaba.com", "Libya"),
    
    # Liberia (3)
    ("liberia_locanto", "Locanto_LR", "https://liberia.locanto.com", "Liberia"),
    ("liberia_afribaba", "Afribaba_LR", "https://lr.afribaba.com", "Liberia"),
    ("liberia_liberiads", "LiberiAds_LR", "https://www.liberiads.com", "Liberia"),
    
    # Palestine (3)
    ("palestine_shobiddak", "Shobiddak_PS", "https://shobiddak.com", "Palestine"),
    ("palestine_opensooq", "OpenSooq_PS", "https://ps.opensooq.com", "Palestine"),
    ("palestine_locanto", "Locanto_PS", "https://palestine.locanto.com", "Palestine"),
    
    # Ireland (3)
    ("ireland_adverts", "Adverts_IE", "https://www.adverts.ie", "Ireland"),
    ("ireland_donedeal", "DoneDeal_IE", "https://www.donedeal.ie", "Ireland"),
    ("ireland_locanto", "Locanto_IE", "https://ireland.locanto.ie", "Ireland"),
    
    # Costa Rica (3)
    ("costarica_encuentra24", "Encuentra24_CR", "https://www.encuentra24.com/costa-rica", "Costa Rica"),
    ("costarica_mercadolibre", "MercadoLibre_CR", "https://www.mercadolibre.co.cr", "Costa Rica"),
    ("costarica_locanto", "Locanto_CR", "https://costarica.locanto.co.cr", "Costa Rica"),
    
    # Switzerland (2)
    ("switzerland_tutti", "Tutti_CH", "https://www.tutti.ch", "Switzerland"),
    ("switzerland_anibis", "Anibis_CH", "https://www.anibis.ch", "Switzerland"),
    
    # Norway (2)
    ("norway_rubrikk", "Rubrikk_NO", "https://www.rubrikk.no", "Norway"),
    ("norway_locanto", "Locanto_NO", "https://norway.locanto.no", "Norway"),
    
    # Bulgaria (1)
    ("bulgaria_olx", "OLX_BG", "https://www.olx.bg", "Bulgaria"),
    
    # Singapore (1)
    ("singapore_carousell", "Carousell_SG", "https://www.carousell.sg", "Singapore"),
    
    # Slovakia (1)
    ("slovakia_bazos", "Bazos_SK", "https://www.bazos.sk", "Slovakia"),
    
    # Denmark (1)
    ("denmark_guloggratis", "GulOgGratis_DK", "https://www.guloggratis.dk", "Denmark"),
    
    # Moldova (1)
    ("moldova_makler", "Makler_MD", "https://makler.md", "Moldova"),
    # Central African Republic (1)
    ("car_afribaba", "Afribaba_CF", "https://cf.afribaba.com", "Central African Republic"),
    # Croatia (1)
    ("croatia_njuskalo", "Njuskalo_HR", "https://www.njuskalo.hr", "Croatia"),
    # Kuwait (1)
    ("kuwait_opensooq", "OpenSooq_KW", "https://kw.opensooq.com", "Kuwait"),
    # Mauritania (1)
    ("mauritania_maurimarket", "MauriMarket_MR", "https://www.maurimarket.net", "Mauritania"),
    # Eritrea (1)
    ("eritrea_asmaraclassifieds", "AsmaraClassifieds_ER", "https://asmaraclassifieds.com", "Eritrea"),
    # Uruguay (1)
    ("uruguay_mercadolibre", "MercadoLibre_UY", "https://www.mercadolibre.com.uy", "Uruguay"),
    # Mongolia (1)
    ("mongolia_unegui", "Unegui_MN", "https://www.unegui.mn", "Mongolia"),
    # Guinea-Bissau (1)
    ("guineabissau_afribaba", "Afribaba_GW", "https://gw.afribaba.com", "Guinea-Bissau"),
    # North Macedonia (1)
    ("macedonia_pazar3", "Pazar3_MK", "https://www.pazar3.mk", "North Macedonia"),
    # Lesotho (1)
    ("lesotho_locanto", "Locanto_LS", "https://lesotho.locanto.com", "Lesotho"),
    # Slovenia (1)
    ("slovenia_bolha", "Bolha_SI", "https://www.bolha.com", "Slovenia"),
    # Albania (1)
    ("albania_merrjep", "MerrJep_AL", "https://www.merrjep.al", "Albania"),
    # Botswana (1)
    ("botswana_locanto", "Locanto_BW", "https://botswana.locanto.com", "Botswana"),
    # Gambia (1)
    ("gambia_afribaba", "Afribaba_GM", "https://gm.afribaba.com", "Gambia"),
    # Timor-Leste (1)
    ("timorleste_locanto", "Locanto_TL", "https://timor-leste.locanto.com", "Timor-Leste"),
    # Mauritius (1)
    ("mauritius_weshare", "Weshare_MU", "https://www.weshare.mu", "Mauritius"),
    # Equatorial Guinea (1)
    ("equatorialguinea_afribaba", "Afribaba_GQ", "https://gq.afribaba.com", "Equatorial Guinea"),
    # Eswatini (1)
    ("eswatini_locanto", "Locanto_SZ", "https://swaziland.locanto.com", "Eswatini"),
    # Trinidad and Tobago (1)
    ("trinidad_locanto", "Locanto_TT", "https://trinidadandtobago.locanto.com", "Trinidad and Tobago"),
    # Cyprus (1)
    ("cyprus_bazaraki", "Bazaraki_CY", "https://www.bazaraki.com", "Cyprus"),
    # Fiji (1)
    ("fiji_locanto", "Locanto_FJ", "https://fiji.locanto.com", "Fiji"),
    # Djibouti (1)
    ("djibouti_afribaba", "Afribaba_DJ", "https://dj.afribaba.com", "Djibouti"),
    # Bahrain (1)
    ("bahrain_opensooq", "OpenSooq_BH", "https://bh.opensooq.com", "Bahrain"),
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
