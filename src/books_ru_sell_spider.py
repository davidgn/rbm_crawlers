from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Books.ru Sell",
    territory="Russia",
    base_url="https://www.books.ru",
    browse_paths=("/sell/", "/", "/books"),
    detail_signals=("/book/", "/books/", "/product/"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Books.ru Russia sell-flow spider")
