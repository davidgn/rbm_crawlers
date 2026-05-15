from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookis Norway",
    territory="Norway",
    base_url="https://bookis.com",
    browse_paths=("/no", "/no/search", "/no/books"),
    detail_signals=("/no/books/", "/no/book/", "/books/", "/book/"),
    headers={"Accept-Language": "nb-NO,nb;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookis Norway marketplace spider")
