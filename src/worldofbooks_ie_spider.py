from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="World of Books Ireland",
    territory="Ireland",
    base_url="https://www.worldofbooks.com",
    browse_paths=("/en-ie/collections/books", "/en-ie", "/en-ie/search?q=books"),
    detail_signals=("/en-ie/products/", "/products/"),
    headers={"Accept-Language": "en-IE,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "World of Books Ireland spider")
