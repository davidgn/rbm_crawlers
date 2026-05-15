from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Okazii.ro Books",
    territory="Romania",
    base_url="https://www.okazii.ro",
    browse_paths=("/carti/", "/carti-vechi/"),
    detail_signals=("/catalog/", "/produs/", "/carti/"),
    exclude_signals=("/ajutor", "/cont", "/cos"),
    headers={"Accept-Language": "ro-RO,ro;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Okazii.ro Romania books marketplace spider")
