from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Restorio.sk",
    territory="Slovakia",
    base_url="https://www.restorio.sk",
    browse_paths=("/", "/knihy", "/vykupujeme-online"),
    detail_signals=("/kniha/", "/books/", "/book/", "/produkt/"),
    headers={"Accept-Language": "sk-SK,sk;q=0.9,cs;q=0.8,en;q=0.7"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Restorio.sk Slovakia spider")
