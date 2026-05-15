from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Vinted Romania Books",
    territory="Romania",
    base_url="https://www.vinted.ro",
    browse_paths=("/catalog/2312-books", "/catalog?search_text=carti"),
    detail_signals=("/items/", "/catalog/"),
    exclude_signals=("/help", "/member", "/login"),
    headers={"Accept-Language": "ro-RO,ro;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Vinted Romania books spider")
