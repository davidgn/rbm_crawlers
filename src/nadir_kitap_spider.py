import argparse
from nodriver_search_spider import NodriverSearchSpider


class NadirKitapSpider(NodriverSearchSpider):
    """
    Nadir Kitap (nadirkitap.com) — Turkey main-universe used/rare book marketplace.

    Rewritten to use nodriver (2026-09-16): the site's plain httpx client gets a
    flat 403, and its real result-page markup has moved on entirely from the
    /kitap-detay.php?kid=... links this spider originally targeted — those don't
    appear anywhere in current search results, which now use SEO-slug URLs like
    /<slug>-kitapNNNNNNN.html. Container: div.nadirItem; title/link:
    h4 a.nadirBook; price: a.price (Turkish comma-decimal, "N,NN TL").
    """

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Nadir Kitap",
            base_url="https://www.nadirkitap.com",
            search_path="kitapara_sonuc.php?kelime={query}",
            selectors={
                'container': 'div.nadirItem',
                'title': 'h4 a.nadirBook',
                'link': 'h4 a.nadirBook',
                'price': 'a.price',
            },
            territory="Turkey",
            price_currency="TRY",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Nadir Kitap Turkey spider")
    parser.add_argument("--query", type=str, default="kitap")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args = parser.parse_args()
    NadirKitapSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run(search_term=args.query)
