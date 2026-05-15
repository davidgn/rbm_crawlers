from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Luta.lv",
    territory="Latvia",
    base_url="https://www.luta.lv",
    browse_paths=("/", "/gramatas", "/books"),
    detail_signals=("/gramata/", "/book/", "/books/", "/prece/"),
    headers={"Accept-Language": "lv-LV,lv;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Luta.lv Latvia spider")
