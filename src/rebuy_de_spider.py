from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="rebuy Germany Books",
    territory="Germany",
    base_url="https://www.rebuy.de",
    browse_paths=("/kaufen/buecher", "/verkaufen/buecher", "/c/buecher"),
    detail_signals=("/i/", "/kaufen/", "/verkaufen/"),
    exclude_signals=("/hilfe", "/konto", "/warenkorb"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "rebuy Germany books spider")
