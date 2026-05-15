from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="LibeX",
    territory="Russia",
    base_url="https://www.libex.ru",
    browse_paths=("/", "/?pg=0", "/?pg=1"),
    detail_signals=("/detail/book",),
    headers={
        "Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8",
        "Referer": "https://www.libex.ru/",
    },
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "LibeX Russia spider")
