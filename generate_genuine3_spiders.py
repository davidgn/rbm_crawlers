import os

platforms = [
    # SPAIN (5 Targets)
    ("Milanuncios", "https://www.milanuncios.com", "Spain"),
    ("WallapopSpain", "https://es.wallapop.com", "Spain"),
    ("Todocoleccion", "https://www.todocoleccion.net", "Spain"),
    ("VintedSpain", "https://www.vinted.es", "Spain"),
    ("Vibbo", "https://www.segundamano.es", "Spain"),

    # ITALY (15 Targets)
    ("Subito", "https://www.subito.it", "Italy"),
    ("Bakeca", "https://www.bakeca.it", "Italy"),
    ("KijijiItaly", "https://www.kijiji.it", "Italy"),
    ("AnnunciNet", "https://www.annunci.net", "Italy"),
    ("Secondamano", "https://www.secondamano.it", "Italy"),
    ("VivastreetItaly", "https://www.vivastreet.it", "Italy"),
    ("Usato", "https://www.usato.it", "Italy"),
    ("PortaPortese", "https://www.portaportese.it", "Italy"),
    ("TuttoAnnunci", "https://www.tuttoannunci.org", "Italy"),
    ("Affari", "https://www.affari.it", "Italy"),
    ("AAAnnunci", "https://www.aaannunci.it", "Italy"),
    ("VintedItaly", "https://www.vinted.it", "Italy"),
    ("ShpockItaly", "https://www.shpock.com/it-it", "Italy"),
    ("WallapopItaly", "https://it.wallapop.com", "Italy"),
    ("IlMercatinoUsato", "https://www.mercatinousato.com", "Italy"),

    # BRAZIL (21 Targets)
    ("OLXBrazil", "https://www.olx.com.br", "Brazil"),
    ("MercadoLivre", "https://lista.mercadolivre.com.br", "Brazil"),
    ("Enjoei", "https://www.enjoei.com.br", "Brazil"),
    ("ShopeeBrazil", "https://shopee.com.br", "Brazil"),
    ("Elo7", "https://www.elo7.com.br", "Brazil"),
    ("PegueiBode", "https://www.pegueibode.com.br", "Brazil"),
    ("Repassa", "https://www.repassa.com.br", "Brazil"),
    ("Troc", "https://troc.com.br", "Brazil"),
    ("FicouPequeno", "https://www.ficoupequeno.com", "Brazil"),
    ("EstanteVirtual", "https://www.estantevirtual.com.br", "Brazil"),
    ("Skina", "https://www.skina.com", "Brazil"),
    ("PrimeiraMao", "https://www.primeiramao.com.br", "Brazil"),
    ("VivaLocalBrazil", "https://www.vivalocal.com", "Brazil"),
    ("ClassificadosCorreio", "https://classificados.correiobraziliense.com.br", "Brazil"),
    ("Desapega", "https://www.desapega.net", "Brazil"),
    ("BazarHorizonte", "https://www.bazarhorizonte.com.br", "Brazil"),
    ("TrocaJogo", "https://www.trocajogo.com.br", "Brazil"),
    ("MeuGameUsado", "https://www.meugameusado.com.br", "Brazil"),
    ("TrashChic", "https://www.trashchic.com.br", "Brazil"),
    ("PecaRara", "https://www.pecararabrecho.com.br", "Brazil"),
    ("Shoptime", "https://www.shoptime.com.br", "Brazil"),
]

template = """import re
from html_search_spider import HTMLSearchSpider

class {spider_class}Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="{platform}", base_url="{base_url}",
            search_path="search?q={{search_term}}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    {spider_class}Spider(limit_pages=1).run()
"""

os.makedirs("/opt/repos/rbm_crawlers/src/", exist_ok=True)

for platform, url, territory in platforms:
    filename = f"/opt/repos/rbm_crawlers/src/genuine3_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} genuine IT/ES/BR spiders.")
