from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="OLX Romania Books",
    territory="Romania",
    base_url="https://www.olx.ro",
    browse_paths=("/hobby-sport-turism/carti-muzica-filme/carti/q-carti-vechi/", "/hobby-sport-turism/carti-muzica-filme/carti/"),
    detail_signals=("/d/oferta/", "/hobby-sport-turism/carti-muzica-filme/carti/"),
    exclude_signals=("/ajutor", "/cont", "/adauga-anunt"),
    headers={"Accept-Language": "ro-RO,ro;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "OLX Romania books classifieds spider")
