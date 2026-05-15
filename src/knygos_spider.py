from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Knygos.lt",
    territory="Lithuania",
    base_url="https://www.knygos.lt",
    browse_paths=("/parduok/", "/", "/lt/knygos/"),
    detail_signals=("/lt/knygos/", "/knyga/", "/product/"),
    headers={"Accept-Language": "lt-LT,lt;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Knygos.lt Lithuania spider")
