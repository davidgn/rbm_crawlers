from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="WOOK Marketplace",
    territory="Portugal",
    base_url="https://www.wook.pt",
    browse_paths=("/", "/livros", "/Marketplace/criaregisto"),
    detail_signals=("/livro/", "/produto/", "/autor/"),
    exclude_signals=("/ajuda", "/cliente", "/carrinho"),
    headers={"Accept-Language": "pt-PT,pt;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "WOOK Portugal Marketplace spider")
