from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Boekwinkeltjes",
    territory="Netherlands",
    base_url="https://www.boekwinkeltjes.nl",
    browse_paths=("/", "/zoeken/", "/aanbod/"),
    detail_signals=("/b/", "/boek/", "/boeken/", "/a/"),
    headers={"Accept-Language": "nl-NL,nl;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Boekwinkeltjes Netherlands marketplace spider")
