from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Reuseabook",
    territory="United Kingdom",
    base_url="https://reuseabook.com",
    browse_paths=("/", "/books", "/sell-books"),
    detail_signals=("/books/", "/book/", "/products/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
    curl_impersonate="chrome124",
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Reuseabook UK spider")
