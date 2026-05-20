from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Boekwinkeltjes.be",
    territory="Belgium",
    base_url="https://www.boekwinkeltjes.be",
    browse_paths=("/", "/zoeken/", "/aanbod/"),
    detail_signals=("/b/", "/boek/", "/boeken/", "/a/"),
    headers={"Accept-Language": "nl-BE,nl;q=0.9,fr-BE;q=0.8,en;q=0.7"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Boekwinkeltjes Belgium marketplace spider")
