from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="OLX Portugal Books",
    territory="Portugal",
    base_url="https://www.olx.pt",
    browse_paths=("/lazer/livros-revistas/", "/lazer/livros-revistas/q-livros-usados/"),
    detail_signals=("/d/anuncio/", "/lazer/livros-revistas/"),
    exclude_signals=("/ajuda", "/conta", "/adicionar-anuncio"),
    headers={"Accept-Language": "pt-PT,pt;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "OLX Portugal books classifieds spider")
