from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="LiveLib Bookswap",
    territory="Russia",
    base_url="https://www.livelib.ru",
    browse_paths=("/bookswap", "/", "/books"),
    detail_signals=("/book/", "/books/", "/bookswap/"),
    exclude_signals=("/users/", "/groups/"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "LiveLib Bookswap Russia spider")
