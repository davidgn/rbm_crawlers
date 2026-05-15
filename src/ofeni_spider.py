from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Ofeni.ru",
    territory="Russia",
    base_url="https://ofeni.ru",
    browse_paths=("/", "/books", "/catalog"),
    detail_signals=("/book/", "/books/", "/item/", "/product/"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Ofeni.ru Russia spider")
