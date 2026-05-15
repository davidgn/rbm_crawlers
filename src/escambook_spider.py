from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="EscamBook",
    territory="Brazil",
    base_url="https://escambook.com.br",
    browse_paths=("/", "/livros", "/books"),
    detail_signals=("/livro/", "/books/", "/book/", "/item/"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "EscamBook Brazil spider")
