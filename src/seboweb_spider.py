from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Seboweb",
    territory="Brazil",
    base_url="https://www.seboweb.com.br",
    browse_paths=("/", "/livros", "/busca"),
    detail_signals=("/livro/", "/produto/", "/product/"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Seboweb Brazil spider")
