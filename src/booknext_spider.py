from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Booknext.nl",
    territory="Netherlands",
    base_url="https://www.booknext.nl",
    browse_paths=("/boeken-verkopen", "/", "/boeken"),
    detail_signals=("/boek/", "/books/", "/product/"),
    headers={"Accept-Language": "nl-NL,nl;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Booknext.nl Netherlands spider")
