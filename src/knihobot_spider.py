from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Knihobot",
    territory="Czechia",
    base_url="https://knihobot.cz",
    browse_paths=("/knihy", "/", "/vyhledavani"),
    detail_signals=("/kniha/", "/books/", "/book/", "/produkt/"),
    headers={"Accept-Language": "cs-CZ,cs;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Knihobot Czechia spider")
