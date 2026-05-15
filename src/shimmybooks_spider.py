from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Shimmy Books",
    territory="United Kingdom",
    base_url="https://shimmybooks.co.uk",
    browse_paths=("/", "/collections/books", "/shop"),
    detail_signals=("/products/", "/product/", "/book/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Shimmy Books UK spider")
