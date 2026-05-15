from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antikvaari.fi",
    territory="Finland",
    base_url="https://www.antikvaari.fi",
    browse_paths=("/", "/haku", "/kirjat"),
    detail_signals=("/tuote/", "/kirja/", "/book/", "/books/"),
    headers={"Accept-Language": "fi-FI,fi;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antikvaari.fi Finland spider")
