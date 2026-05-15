from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Dont Throw Me Hong Kong Books",
    territory="Hong Kong",
    base_url="https://dontthrowme.com",
    browse_paths=("/en/marketplace/books", "/en/marketplace"),
    detail_signals=("/en/marketplace/", "/product/", "/item/"),
    exclude_signals=("/login", "/account", "/help"),
    headers={"Accept-Language": "en-HK,en;q=0.9,zh-HK;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Don't Throw Me Hong Kong books marketplace spider")
