from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider

CONFIG = MarketplaceConfig(
    platform_name="PustakMart",
    territory="India",
    base_url="https://www.pustakmart.com",
    browse_paths=("/",),
    detail_signals=("/product/", "/book/"),
    headers={"Accept-Language": "en-IN,en;q=0.9"},
)

if __name__ == "__main__":
    run_configured_spider(CONFIG, "PustakMart India buy/sell platform spider")
