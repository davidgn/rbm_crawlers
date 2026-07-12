from bs4 import BeautifulSoup
from lse_student_union_spider import LseStudentUnionSpider

def test_lse_student_union_spider_parse_item():
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = """
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-price">£34.99</span>
      <span class="msl-search-result-author">By N. Gregory Mankiw</span>
    </div>
    """
    
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    
    assert item.title == "Introduction to Economics"
    assert item.listing_url == "https://www.lsesu.com/books/textbook-123"
    assert item.price == "34.99"
    assert item.price_currency == "GBP"
    assert item.author == "N. Gregory Mankiw"
    assert item.territory == "United Kingdom"
    assert item.platform == "LSE Student Union"
