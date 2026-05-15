from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ABA Book Search Ireland",
    territory="Ireland",
    base_url="https://aba.org.uk",
    browse_paths=("/book-search", "/books", "/bookseller-member-directory"),
    detail_signals=("/book/", "/books/", "/catalogue/", "/bookseller/"),
    exclude_signals=("/assets/", "/page/", "/events/"),
    headers={"Accept-Language": "en-IE,en-GB;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ABA Book Search Ireland scope spider")
