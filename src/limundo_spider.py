from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Limundo Books",
    territory="Serbia",
    base_url="https://www.limundo.com",
    browse_paths=("/Knjige/aukcije/g6", "/Knjige/Beletristika/aukcije/g6s1"),
    detail_signals=("/aukcija/", "/Knjige/", "/kupovina/"),
    exclude_signals=("/Pomoc", "/Registracija", "/Prijava"),
    headers={"Accept-Language": "sr-RS,sr;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Limundo Serbia books auction spider")
