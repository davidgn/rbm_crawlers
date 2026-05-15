from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ScholarlyTT",
    territory="Trinidad and Tobago",
    base_url="https://scholarlytt.com",
    browse_paths=("/", "/shop", "/collections/all", "/collections/books"),
    detail_signals=("/products/", "/product/", "/shop/"),
    headers={"Accept-Language": "en-TT,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ScholarlyTT Trinidad and Tobago spider")
