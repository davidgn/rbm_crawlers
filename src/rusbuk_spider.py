from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="RusBuk",
    territory="Russia",
    base_url="https://rusbuk.ru",
    browse_paths=("/", "/catalog", "/books"),
    detail_signals=("/book/", "/books/", "/item/", "/product/"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "RusBuk Russia spider")
