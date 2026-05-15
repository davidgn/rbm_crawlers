from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Publi24 Romania Books",
    territory="Romania",
    base_url="https://www.publi24.ro",
    browse_paths=("/anunturi/?q=vand+carti+vechi", "/anunturi/timp-liber-sport/carti-reviste/"),
    detail_signals=("/anunturi/", "/carti-reviste/"),
    exclude_signals=("/cont", "/ajutor", "/adauga-anunt"),
    headers={"Accept-Language": "ro-RO,ro;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Publi24 Romania books classifieds spider")
