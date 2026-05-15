from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Moiknigi.com",
    territory="Russia",
    base_url="https://moiknigi.com",
    browse_paths=("/", "/books", "/catalog"),
    detail_signals=("/book/", "/books/", "/item/", "/product/"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Moiknigi Russia spider")
