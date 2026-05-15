from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="BookFlea Ukraine",
    territory="Ukraine",
    base_url="https://www.bookflea.co",
    browse_paths=("/", "/books", "/catalog"),
    detail_signals=("/books/", "/book/", "/product/"),
    exclude_signals=("/auth", "/login", "/privacy"),
    headers={"Accept-Language": "uk-UA,uk;q=0.9,pl;q=0.8,en;q=0.7"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "BookFlea Ukraine used-books spider")
