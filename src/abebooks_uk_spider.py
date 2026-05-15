from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="AbeBooks UK",
    territory="United Kingdom",
    base_url="https://www.abebooks.co.uk",
    browse_paths=("/servlet/SearchResults?kn=used+books&pt=book&sts=t", "/book-search/", "/books/rarebooks/"),
    detail_signals=("/servlet/BookDetailsPL", "/book/", "/books/", "/bd/"),
    exclude_signals=("/help/", "/docs/", "/sell/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "AbeBooks UK used-books spider")
