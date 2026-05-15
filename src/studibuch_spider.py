from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Studibuch",
    territory="Germany",
    base_url="https://studibuch.de",
    browse_paths=("/", "/shop/", "/buecher-verkaufen/"),
    detail_signals=("/shop/", "/produkt/", "/buch/"),
    exclude_signals=("/hilfe", "/konto", "/warenkorb"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Studibuch used-textbooks spider")
