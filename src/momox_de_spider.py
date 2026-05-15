from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="momox Germany",
    territory="Germany",
    base_url="https://www.momox.de",
    browse_paths=("/buecher-verkaufen/", "/gebrauchte-buecher-kaufen/", "/"),
    detail_signals=("/buecher/", "/produkt/", "/media/", "/verkaufen/"),
    exclude_signals=("/hilfe", "/konto", "/warenkorb"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "momox Germany books recommerce spider")
