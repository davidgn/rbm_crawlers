from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Raamatuvahetus",
    territory="Estonia",
    base_url="https://raamatuvahetus.ee",
    browse_paths=("/", "/raamatud", "/books"),
    detail_signals=("/raamat/", "/raamatud/", "/book/", "/item/"),
    headers={"Accept-Language": "et-EE,et;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Raamatuvahetus Estonia spider")
