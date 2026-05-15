from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Troca de Livros",
    territory="Brazil",
    base_url="https://www.trocadelivros.com.br",
    browse_paths=("/", "/livros", "/buscar", "/estante"),
    detail_signals=("/livro/", "/livros/", "/book/", "/books/"),
    exclude_signals=("/blog/", "/contato", "/login"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Troca de Livros Brazil exchange spider")
