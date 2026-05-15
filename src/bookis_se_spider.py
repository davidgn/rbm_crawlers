from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookis Sweden",
    territory="Sweden",
    base_url="https://bookis.com",
    browse_paths=("/se", "/en-se", "/se/search", "/se/books"),
    detail_signals=("/se/books/", "/se/book/", "/books/", "/book/"),
    exclude_signals=("/help", "/privacy", "/terms"),
    headers={"Accept-Language": "sv-SE,sv;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookis Sweden marketplace spider")
