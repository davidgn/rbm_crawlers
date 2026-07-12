import pytest
from bs4 import BeautifulSoup
from kcl_student_union_spider import KclStudentUnionSpider

def test_kcl_student_union_spider_parse_item():
    spider = KclStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    # Test KCL SU HTML using the custom KCL selectors
    mock_html = """
    <div class="msl-book-item">
      <h3 class="msl-book-title"><a href="/books/kcl-textbook-456">Advanced Microeconomics</a></h3>
      <span class="msl-book-price">£45.00</span>
      <span class="msl-book-author">By Hal R. Varian</span>
    </div>
    """
    
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-book-item")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    
    assert item.title == "Advanced Microeconomics"
    assert item.listing_url == "https://www.kclsu.org/books/kcl-textbook-456"
    assert item.price == "45.00"
    assert item.price_currency == "GBP"
    assert item.author == "Hal R. Varian"
    assert item.territory == "United Kingdom"
    assert item.platform == "KCL Student Union (King's College London)"
