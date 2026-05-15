from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="NaudotosKnygos.lt",
    territory="Lithuania",
    base_url="https://www.naudotosknygos.lt",
    browse_paths=("/", "/knygos", "/paieska"),
    detail_signals=("/knyga/", "/knygos/", "/book/", "/item/"),
    headers={"Accept-Language": "lt-LT,lt;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "NaudotosKnygos.lt Lithuania spider")
