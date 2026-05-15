from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Book Village",
    territory="France",
    base_url="https://bookvillage.app",
    browse_paths=("/", "/catalogue", "/search"),
    detail_signals=("/books/", "/book/", "/livre/", "/annonce/"),
    headers={"Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Book Village France spider")
