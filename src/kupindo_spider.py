from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Kupindo Books",
    territory="Serbia",
    base_url="https://www.kupindo.com",
    browse_paths=("/Knjige/artikli/1", "/Knjige/Beletristika/artikli/1"),
    detail_signals=("/Knjige/", "/artikal/", "/Aukcija/"),
    exclude_signals=("/Pomoc", "/Registracija", "/Prijava"),
    headers={"Accept-Language": "sr-RS,sr;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Kupindo Serbia books marketplace spider")
