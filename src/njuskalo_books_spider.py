from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Njuskalo Books",
    territory="Croatia",
    base_url="https://www.njuskalo.hr",
    browse_paths=("/knjige", "/udzbenici"),
    detail_signals=("/knjige/", "/udzbenici/", "/oglas/"),
    exclude_signals=("/pomoc", "/prijava", "/predaja-oglasa"),
    headers={"Accept-Language": "hr-HR,hr;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Njuskalo Croatia books classifieds spider")
