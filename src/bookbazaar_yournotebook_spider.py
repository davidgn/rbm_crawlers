from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="BookBazaar by YourNotebook",
    territory="India",
    base_url="https://www.yournotebook.in",
    browse_paths=("/bookbazaar", "/bookbazaar/search", "/bookbazaar?search=book"),
    detail_signals=("/bookbazaar/", "/books/", "/book/"),
    rendered=True,
    render_wait_ms=7000,
    headers={"Accept-Language": "en-IN,en;q=0.9,hi;q=0.8"},
    link_fallback_on_detail_failure=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "YourNotebook BookBazaar India student exchange spider")
