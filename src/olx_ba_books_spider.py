from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="OLX Bosnia Books",
    territory="Bosnia and Herzegovina",
    base_url="https://olx.ba",
    browse_paths=("/pretraga?trazilica=knjige", "/kategorija/17/literatura-knjige"),
    detail_signals=("/artikal/",),
    exclude_signals=("/login", "/registracija", "/pomoc"),
    headers={"Accept-Language": "bs-BA,bs;q=0.9,hr;q=0.8,sr;q=0.8,en;q=0.7"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "OLX Bosnia books classifieds spider")
