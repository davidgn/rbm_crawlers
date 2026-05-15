from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Tezeusz",
    territory="Poland",
    base_url="https://tezeusz.pl",
    browse_paths=("/", "/ksiazki", "/info/skup-ksiazek"),
    detail_signals=("/ksiazka/", "/produkt/", "/book/"),
    headers={"Accept-Language": "pl-PL,pl;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Tezeusz Poland spider")
