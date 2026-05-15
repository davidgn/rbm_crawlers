from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Aukcije.hr Books",
    territory="Croatia",
    base_url="https://www.aukcije.hr",
    browse_paths=("/prodaja/Knjige-i-tisak/10/", "/prodaja/knjige-i-tisak/antikvarne-knjige/270"),
    detail_signals=("/prodaja/", "/aukcija/", "/item/"),
    exclude_signals=("/pomoc", "/registracija", "/prijava", "/item/newitem", "/user/login"),
    headers={"Accept-Language": "hr-HR,hr;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Aukcije.hr Croatia books auction spider")
