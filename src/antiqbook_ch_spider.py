from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antiqbook Switzerland",
    territory="Switzerland",
    base_url="https://www.antiqbook.com",
    browse_paths=("/", "/search.php", "/index.php?l=&o=alt"),
    detail_signals=("/boox/", "/book/", "/books/", "antiquarian"),
    headers={"Accept-Language": "de-CH,de;q=0.9,fr-CH;q=0.8,en;q=0.7"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antiqbook Switzerland spider")
