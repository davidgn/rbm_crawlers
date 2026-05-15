from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Sell Your Shelf",
    territory="United Kingdom",
    base_url="https://www.sellyourshelf.com",
    browse_paths=("/", "/books", "/shop"),
    detail_signals=("/books/", "/book/", "/products/", "/product/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Sell Your Shelf UK spider")
