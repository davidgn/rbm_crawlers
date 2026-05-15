from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="antiquariat.de GIAQ",
    territory="Germany",
    base_url="https://www.antiquariat.de",
    browse_paths=("/html/", "/angebote/", "/suche/"),
    detail_signals=("/angebote/", "/details/", "/book/", "/buch/", "/html/"),
    exclude_signals=("/impressum", "/datenschutz", "/kontakt"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "antiquariat.de / GIAQ spider")
