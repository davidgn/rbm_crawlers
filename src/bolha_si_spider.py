from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bolha Slovenia Books",
    territory="Slovenia",
    base_url="https://www.bolha.com",
    browse_paths=("/knjige-revije-stripi", "/trgovina/antikvariatstarabukla?categoryId=28446"),
    detail_signals=("/oglas/", "/trgovina/", "/knjige-"),
    exclude_signals=("/pomoc", "/moj-bolha", "/kosarica"),
    headers={"Accept-Language": "sl-SI,sl;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bolha Slovenia books spider")
