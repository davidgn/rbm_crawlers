from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Booksharing.app Russia",
    territory="Russia",
    base_url="https://ru.booksharing.app",
    browse_paths=("/", "/books", "/search"),
    detail_signals=("/book/", "/books/", "/item/"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Booksharing.app Russia spider")
