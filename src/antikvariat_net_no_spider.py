from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antikvariat.net Norway",
    territory="Norway",
    base_url="https://www.antikvariat.net",
    browse_paths=("/no/sok", "/no", "/search"),
    detail_signals=("/no/book/", "/no/books/", "/bok/", "/book/"),
    headers={"Accept-Language": "nb-NO,nb;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antikvariat.net Norway spider")
