from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Empik Marketplace Used Books",
    territory="Poland",
    base_url="https://www.empik.com",
    browse_paths=("/ksiazki", "/szukaj/produkt?q=uzywane%20ksiazki", "/marketplace"),
    detail_signals=("/ksiazka-p", "/p/", "/produkt/"),
    exclude_signals=("/pomoc", "/koszyk", "/konto"),
    headers={"Accept-Language": "pl-PL,pl;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Empik Marketplace used-books spider")
