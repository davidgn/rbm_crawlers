from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Chapters",
    territory="Philippines",
    base_url="https://chaptersph.net",
    browse_paths=("/", "/books", "/marketplace", "/search?q=book"),
    detail_signals=("/book/", "/books/", "/product/", "/listing/"),
    rendered=True,
    render_wait_ms=7000,
    headers={"Accept-Language": "en-PH,en;q=0.9"},
    link_fallback_on_detail_failure=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Chapters Philippines pre-loved books marketplace spider")
