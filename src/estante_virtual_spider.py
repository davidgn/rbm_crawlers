from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Estante Virtual",
    territory="Brazil",
    base_url="https://www.estantevirtual.com.br",
    browse_paths=("/", "/busca", "/livros"),
    detail_signals=("/livros/", "/livro/", "/produto/"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Estante Virtual Brazil spider")
