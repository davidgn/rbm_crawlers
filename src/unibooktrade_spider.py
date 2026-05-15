from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="UniBookTrade",
    territory="United Kingdom",
    base_url="https://unibooktrade.co.uk",
    browse_paths=("/", "/books", "/search"),
    detail_signals=("/book/", "/books/", "/listing/", "/item/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "UniBookTrade UK spider")
