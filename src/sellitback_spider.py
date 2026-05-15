from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="SellitBack",
    territory="United Kingdom",
    base_url="https://sellitback.com",
    browse_paths=("/", "/sell-books", "/books"),
    detail_signals=("/books/", "/book/", "/products/"),
    headers={
        "Accept-Language": "en-GB,en;q=0.9",
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"
        ),
    },
    cloudscraper=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "SellitBack UK spider")
