from pathlib import Path

from bs4 import BeautifulSoup
from hypothesis import given, settings, strategies as st


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"

from books_tw_spider import BooksTwSpider  # noqa: E402
from bookconekt_spider import BookconektSpider  # noqa: E402
from cite_tw_spider import CiteTwSpider  # noqa: E402
from eslite_tw_spider import EsliteTwSpider  # noqa: E402
from kingstone_spider import KingstoneSpider  # noqa: E402


def test_books_tw_search_row_parser_extracts_offer():
    html = """
    <tbody id="itemlist_F013379994">
      <h4><a rel="mid_name" href="/redirect/move/key/Harry/area/mid_name/item/F013379994"
        title="Harry Potter Box Set">Harry Potter Box Set</a></h4>
      <a rel="go_author">J.K. Rowling</a>
      <a href="/web/sys_puballb/books/?pubid=bloomsbury" title="Bloomsbury">Bloomsbury</a>
      <input id="itemlist_F013379994_price" value="1999" />
      <ul class="list-date clearfix"><li><span>外文書</span></li><li>出版日期: 2014-09-10</li></ul>
    </tbody>
    """
    spider = BooksTwSpider(limit_items=1)
    row = BeautifulSoup(html, "html.parser").select_one("tbody")

    listing = spider._parse_row(row)

    assert listing.title == "Harry Potter Box Set"
    assert listing.author == "J.K. Rowling"
    assert listing.publisher == "Bloomsbury"
    assert listing.publication_year == "2014-09-10"
    assert listing.category == "外文書"
    assert listing.price == "TWD 1999"
    assert "F013379994" in listing.seller_comments


def test_kingstone_search_item_parser_extracts_offer():
    html = """
    <li class="displayunit">
      <h3 class="pdnamebox"><a href="/basic/2037000543631/?lid=search">Harry Potter Coloring Book</a></h3>
      <div class="classbox"><span>外文書</span></div>
      <span class="author"><a>Scholastic</a></span>
      <span class="publish"><a>Scholastic</a></span>
      <span>特價 <b>752</b> 元</span>
    </li>
    """
    spider = KingstoneSpider(limit_items=1)
    item = BeautifulSoup(html, "html.parser").select_one("li")

    listing = spider._parse_search_item(item)

    assert listing.title == "Harry Potter Coloring Book"
    assert listing.author == "Scholastic"
    assert listing.publisher == "Scholastic"
    assert listing.category == "外文書"
    assert listing.price == "TWD 752"
    assert "2037000543631" in listing.seller_comments


def test_eslite_json_parser_extracts_offer():
    spider = EsliteTwSpider(limit_items=1)
    hit = {"id": "fallback-id"}
    fields = {
        "name": "Harry Potter Box Set",
        "url": "/product/1003159022376199",
        "final_price": "2,199",
        "isbn": "9781408856772",
        "author": ["J.K. Rowling"],
        "manufacturer": ["BLOOMSBURY PUBLISHING"],
        "manufacturer_date": "10/09/2014",
        "eslite_sn": "2680922207008",
    }

    listing = spider._listing_from_fields(hit, fields)

    assert listing.title == "Harry Potter Box Set"
    assert listing.isbn == "9781408856772"
    assert listing.author == "J.K. Rowling"
    assert listing.publisher == "BLOOMSBURY PUBLISHING"
    assert listing.publication_year == "2014-10-09"
    assert listing.category == "中文書"
    assert listing.price == "2199.00"
    assert listing.price_currency == "TWD"


def test_eslite_parser_marks_ebook_title():
    spider = EsliteTwSpider(limit_items=1)
    fields = {
        "name": "【電子書】資料結構",
        "url": "/product/2680000000000",
        "final_price": "399",
        "manufacturer": ["Example Publisher"],
        "manufacturer_date": "01/02/2024",
        "eslite_sn": "2680000000000",
    }

    listing = spider._listing_from_fields({"id": "fallback-id"}, fields)

    assert listing.category == "電子書"


def test_cite_search_item_parser_extracts_offer():
    html = """
    <li class="book-area-1">
      <h2><a href="/book?id=107549" title="《義妹生活 another days 一般版》">義妹生活</a></h2>
      <a id="writer">三河ごーすと</a>
      <b>出版社：</b><a>台灣角川</a>
      <b>出版日期：</b><span>20260617</span>
      <b>類型：</b><span>紙本書</span>
      <li>優惠價：250 元</li>
    </li>
    """
    spider = CiteTwSpider(limit_items=1)
    item = BeautifulSoup(html, "html.parser").select_one("li.book-area-1")

    listing = spider._parse_item(item)

    assert listing.title == "義妹生活 another days 一般版"
    assert listing.author == "三河ごーすと"
    assert listing.publisher == "台灣角川"
    assert listing.publication_year == "2026-06-17"
    assert listing.category == "紙本書"
    assert listing.price == "TWD 250"


def test_bookconekt_detail_parser_extracts_offer():
    html = """
    <main>
      <h1>Le pacte de sang</h1>
      <p class="price"><span class="woocommerce-Price-amount">5 000 CFA</span></p>
      <div class="product-description">
        Auteur : Florent Couao-Zotti
        Editeur : Ruisseaux d'Afrique
        Catégorie : Roman béninois
        ISBN : 9789991915555
      </div>
    </main>
    """
    spider = BookconektSpider(limit_items=1)
    listing = spider._parse_detail(
        BeautifulSoup(html, "html.parser"),
        "https://bookconekt.com/product/le-pacte-de-sang/",
    )
    spider.client.close()

    assert listing.title == "Le pacte de sang"
    assert listing.author == "Florent Couao-Zotti"
    assert listing.publisher == "Ruisseaux d'Afrique"
    assert listing.category == "Roman béninois"
    assert listing.isbn == "9789991915555"
    assert listing.price == "5000"
    assert listing.price_currency == "XOF"


def test_taiwan_parsers_skip_incomplete_result_blocks():
    assert BooksTwSpider(limit_items=1)._parse_row(
        BeautifulSoup("<tbody id='itemlist_BAD'></tbody>", "html.parser").tbody
    ) is None
    assert KingstoneSpider(limit_items=1)._parse_search_item(
        BeautifulSoup("<li class='displayunit'></li>", "html.parser").li
    ) is None
    assert CiteTwSpider(limit_items=1)._parse_item(
        BeautifulSoup("<li class='book-area-1'></li>", "html.parser").li
    ) is None
    assert EsliteTwSpider(limit_items=1)._listing_from_fields(
        {"id": "missing-url"},
        {"name": "Title without URL"},
    ) is None


@given(st.text(min_size=1, max_size=40))
@settings(deadline=None)
def test_taiwan_title_cleaners_are_idempotent(raw):
    books = BooksTwSpider(limit_items=1)
    cite = CiteTwSpider(limit_items=1)
    once = books._clean(raw)
    assert books._clean(once) == once
    cite_once = cite._clean_title(raw)
    assert cite._clean_title(cite_once) == cite_once


@given(st.integers(min_value=1, max_value=999_999))
@settings(deadline=None)
def test_price_helpers_keep_twd_prefix(amount):
    kingstone = KingstoneSpider(limit_items=1)
    cite = CiteTwSpider(limit_items=1)
    text = f"特價 {amount:,} 元"
    cite_text = f"優惠價：{amount:,} 元"
    assert kingstone._price(text) == f"TWD {amount}"
    assert cite._match_price(cite_text) == f"TWD {amount}"
