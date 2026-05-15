from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookmatch.nl",
    territory="Netherlands",
    base_url="https://www.bookmatch.nl",
    browse_paths=("/", "/boeken", "/search"),
    detail_signals=("/boeken/", "/boek/", "/advertentie/", "/book/"),
    headers={"Accept-Language": "nl-NL,nl;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookmatch.nl Netherlands spider")
