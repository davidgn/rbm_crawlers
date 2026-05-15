from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="OLX Brasil Books",
    territory="Brazil",
    base_url="https://www.olx.com.br",
    browse_paths=("/livros-e-revistas", "/brasil?q=livros%20usados"),
    detail_signals=("/anuncio/", "/livros-e-revistas/"),
    exclude_signals=("/ajuda", "/minha-conta", "/publicar"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "OLX Brasil books classifieds spider")
