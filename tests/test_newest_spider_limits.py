from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

from kingstone_spider import KingstoneSpider  # noqa: E402
from shopee_id_books_spider import ShopeeIdSpider  # noqa: E402
from shopee_my_books_spider import ShopeeMySpider  # noqa: E402
from shopee_ph_books_spider import ShopeePhSpider  # noqa: E402
from shopee_th_books_spider import ShopeeThSpider  # noqa: E402
from tiki_vn_spider import TikiVnSpider  # noqa: E402


def test_newest_spiders_honor_explicit_limits():
    spiders = [
        KingstoneSpider(limit_pages=2, limit_items=3),
        TikiVnSpider(limit_pages=2, limit_items=3),
        ShopeeIdSpider(limit_pages=2, limit_items=3),
        ShopeeMySpider(limit_pages=2, limit_items=3),
        ShopeePhSpider(limit_pages=2, limit_items=3),
        ShopeeThSpider(limit_pages=2, limit_items=3),
    ]

    for spider in spiders:
        assert spider.limit_pages == 2
        assert spider.limit_items == 3


def test_tiki_product_url_rejects_tracking_links():
    spider = TikiVnSpider(limit_pages=1, limit_items=1)

    assert (
        spider._product_url("/dien-thoai-samsung-galaxy-p123456.html?spid=123")
        == "https://tiki.vn/dien-thoai-samsung-galaxy-p123456.html?spid=123"
    )
    assert spider._product_url("//tka.tiki.vn/pixel/pixel?data=tracking") is None
    assert spider._product_url("/search?q=sach+cu") is None
