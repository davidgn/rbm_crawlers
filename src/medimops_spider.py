from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="medimops",
    territory="Germany",
    base_url="https://www.medimops.de",
    browse_paths=("/secondhand-books/", "/buecher-C0186593/", "/gebrauchte-buecher-C0186593/"),
    detail_signals=("/produkte/", "/books/", "/buecher/"),
    exclude_signals=("/hilfe", "/konto", "/warenkorb"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "medimops secondhand-books spider")
