from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookurve",
    territory="Malaysia",
    base_url="https://www.bookurve.com",
    browse_paths=("/used-book/en", "/collections/used-book", "/gogreen"),
    detail_signals=("/products/", "/used-book/", "/collections/"),
    exclude_signals=("/account", "/cart", "/policies"),
    headers={"Accept-Language": "en-MY,en;q=0.9,ms;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookurve Malaysia used-books spider")
