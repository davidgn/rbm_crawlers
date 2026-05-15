from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Shopee Philippines Used Books",
    territory="Philippines",
    base_url="https://shopee.ph",
    browse_paths=("/search?category=11044709&keyword=preloved+books", "/search?keyword=secondhand%20books"),
    detail_signals=("-i.", "/product/", "/book"),
    exclude_signals=("/buyer", "/help", "/cart"),
    headers={"Accept-Language": "en-PH,en;q=0.9,fil;q=0.8"},
    rendered=True,
    render_wait_ms=5000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Shopee Philippines used-books spider")
