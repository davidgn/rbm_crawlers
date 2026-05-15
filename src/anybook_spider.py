from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Anybook",
    territory="United Kingdom",
    base_url="https://www.anybook.com",
    browse_paths=("/", "/catalogue", "/search"),
    detail_signals=("/book/", "/books/", "/product/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Anybook UK spider")
