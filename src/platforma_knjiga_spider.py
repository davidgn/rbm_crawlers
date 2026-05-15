from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Platforma knjiga",
    territory="Montenegro",
    base_url="https://www.platformaknjiga.me",
    browse_paths=("/", "/polovne-knjige", "/antikvarne-knjige"),
    detail_signals=("/knjiga/", "/product/", "/proizvod/"),
    exclude_signals=("/kontakt", "/korpa", "/nalog"),
    headers={"Accept-Language": "sr-ME,sr;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Platforma knjiga Montenegro used-books spider")
