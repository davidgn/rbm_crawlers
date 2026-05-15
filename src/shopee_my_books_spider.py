from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Shopee Malaysia Used Books",
    territory="Malaysia",
    base_url="https://shopee.com.my",
    browse_paths=("/search?keyword=secondhand%20books", "/search?keyword=preloved%20books"),
    detail_signals=("-i.", "/product/", "/book"),
    exclude_signals=("/buyer", "/help", "/cart"),
    headers={"Accept-Language": "en-MY,en;q=0.9,ms;q=0.8"},
    rendered=True,
    render_wait_ms=5000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Shopee Malaysia used-books spider")
