from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="AbeBooks Italy",
    territory="Italy",
    base_url="https://www.abebooks.it",
    browse_paths=("/libri-usati/", "/servlet/SearchResults?kn=libri+usati&pt=book&sts=t", "/libri/cerca"),
    detail_signals=("/servlet/BookDetailsPL", "/libro/", "/books/", "/bd/"),
    exclude_signals=("/help/", "/docs/", "/vendere-libri/"),
    headers={"Accept-Language": "it-IT,it;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "AbeBooks Italy used-books spider")
