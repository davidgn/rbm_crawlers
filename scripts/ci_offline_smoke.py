#!/usr/bin/env python3
from pathlib import Path

from bs4 import BeautifulSoup


ROOT = Path(__file__).resolve().parents[1]

from ai_extractor import local_fallback_extract  # noqa: E402
from kingstone_spider import KingstoneSpider  # noqa: E402


def main():
    fallback = local_fallback_extract(
        "<html><title>Offline Book | Shop</title><body>ISBN 9780306406157 $ 8.00</body></html>"
    )
    assert fallback["title"] == "Offline Book"
    assert fallback["isbn"] == "9780306406157"

    item = BeautifulSoup(
        """
        <li class="displayunit">
          <h3 class="pdnamebox"><a href="/basic/123/">Offline Book</a></h3>
          <span>特價 <b>100</b> 元</span>
        </li>
        """,
        "html.parser",
    ).li
    listing = KingstoneSpider(limit_items=1)._parse_search_item(item)
    assert listing.title == "Offline Book"
    assert listing.price == "TWD 100"
    print("offline smoke passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
