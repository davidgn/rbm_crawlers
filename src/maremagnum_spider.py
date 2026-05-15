from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Maremagnum",
    territory="Italy",
    base_url="https://www.maremagnum.com",
    browse_paths=(
        "/en/risultati-ricerca/",
        "/it/ricerca-di-libri/",
        "/en/libri-moderni/",
    ),
    detail_signals=("/en/libri/", "/it/libri/", "/libri-moderni/", "/libri-antichi/"),
    headers={"Accept-Language": "it-IT,it;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Maremagnum Italy marketplace spider")
