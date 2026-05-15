from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="SkupSzop",
    territory="Poland",
    base_url="https://skupszop.pl",
    browse_paths=("/", "/ksiazki", "/skup-ksiazek"),
    detail_signals=("/ksiazka/", "/produkt/", "/book/"),
    headers={"Accept-Language": "pl-PL,pl;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "SkupSzop Poland spider")
