from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Booky.fi Omakauppa",
    territory="Finland",
    base_url="https://www.booky.fi",
    browse_paths=("/omakauppa", "/", "/search"),
    detail_signals=("/tuote/", "/kirja/", "/book/", "/product/"),
    headers={"Accept-Language": "fi-FI,fi;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Booky.fi Omakauppa Finland spider")
