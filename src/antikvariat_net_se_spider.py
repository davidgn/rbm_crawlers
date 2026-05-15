from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antikvariat.net Sweden",
    territory="Sweden",
    base_url="https://www.antikvariat.net",
    browse_paths=("/sv/sok", "/sv", "/search"),
    detail_signals=("/sv/book/", "/sv/books/", "/bok/", "/book/"),
    headers={"Accept-Language": "sv-SE,sv;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antikvariat.net Sweden spider")
