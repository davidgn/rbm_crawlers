## 2026-07-05T05:50:12Z
You are worker_m2_1_gen2. Your working directory for metadata is /opt/repos/rbm_crawlers/.agents/worker_m2_1_gen2.
Your task is to implement the migration of src/kcl_student_union_spider.py from HTMLSearchSpider to PlaywrightSearchSpider.

Specifically, perform the following:
1. Replace the contents of src/kcl_student_union_spider.py with the proposed PlaywrightSearchSpider implementation:
```python
import argparse
from playwright_search_spider import PlaywrightSearchSpider

class KclStudentUnionSpider(PlaywrightSearchSpider):
    """
    Playwright-based spider for KCL Student Union to bypass Cloudflare 403 blocks.
    Inherits from PlaywrightSearchSpider.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="KCL Student Union (King's College London)",
            base_url="https://www.kclsu.org",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row, .msl-book-item, .msl-book-card, .msl-book-listing',
                'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a, .msl-book-title a',
                'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
                'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price, .msl-book-price',
                'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text, .msl-book-author'
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="KCL Student Union Playwright Spider")
    parser.add_argument("--query", type=str, default="Harry Potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = KclStudentUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
```
2. Verify the implementation compiles and can be imported:
   - Run compilation command: `python -m py_compile src/kcl_student_union_spider.py`
   - Run import command: `PYTHONPATH=src python3 -c "from kcl_student_union_spider import KclStudentUnionSpider"`
3. Document the commands run, outcomes, and code layout compliance in your handoff report.
4. Write your handoff report to /opt/repos/rbm_crawlers/.agents/worker_m2_1_gen2/handoff.md.

MANDATORY INTEGRITY WARNING — include this verbatim:
> DO NOT CHEAT. All implementations must be genuine. DO NOT
> hardcode test results, create dummy/facade implementations, or
> circumvent the intended task. A Forensic Auditor will independently
> verify your work. Integrity violations WILL be detected and your
> work WILL be rejected.

Notify parent (sub_orch_m2) once complete.
