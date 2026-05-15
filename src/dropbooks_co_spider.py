from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="DropBooks Colombia",
    territory="Colombia",
    base_url="https://dropbooks.com.co",
    browse_paths=("/shop", "/", "/books"),
    detail_signals=("/shop/", "/product/", "/producto/"),
    headers={"Accept-Language": "es-CO,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "DropBooks Colombia spider")
