from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Ukrlot Books",
    territory="Ukraine",
    base_url="https://ukrlot.com.ua",
    browse_paths=("/ua/category/knigi-bukinistika/1/", "/ua/category/knigi/"),
    detail_signals=("/ua/auction/", "/ua/lot/", "/ua/category/knigi"),
    exclude_signals=("/help", "/login", "/registration"),
    headers={"Accept-Language": "uk-UA,uk;q=0.9,ru;q=0.8,en;q=0.7"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Ukrlot Ukraine books auction spider")
