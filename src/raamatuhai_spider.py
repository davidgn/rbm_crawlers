from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Raamatuhai",
    territory="Estonia",
    base_url="https://raamatuhai.ee",
    browse_paths=("/", "/raamatud", "/books"),
    detail_signals=("/raamat/", "/raamatud/", "/book/", "/product/"),
    headers={"Accept-Language": "et-EE,et;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Raamatuhai Estonia spider")
