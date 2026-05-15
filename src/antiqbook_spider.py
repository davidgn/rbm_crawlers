from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antiqbook",
    territory="Netherlands",
    base_url="https://www.antiqbook.com",
    browse_paths=("/", "/search.php", "/books"),
    detail_signals=("/boox/", "/book/", "/books/", "antiquarian"),
    headers={"Accept-Language": "nl-NL,nl;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antiqbook Netherlands spider")
