from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antikka.net",
    territory="Finland",
    base_url="https://antikka.net",
    browse_paths=("/", "/kirjat", "/haku"),
    detail_signals=("/tuote/", "/kirja/", "/book/", "/books/"),
    headers={"Accept-Language": "fi-FI,fi;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antikka.net Finland spider")
