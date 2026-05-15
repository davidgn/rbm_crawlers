from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Patuljak Montenegro Books",
    territory="Montenegro",
    base_url="https://patuljak.me",
    browse_paths=("/c/knjige", "/c/srednja-skola"),
    detail_signals=("/oglas/", "/c/knjige/", "/knjige/"),
    exclude_signals=("/pomoc", "/login", "/registracija"),
    headers={"Accept-Language": "sr-ME,sr;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Patuljak Montenegro books classifieds spider")
