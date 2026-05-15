from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Shopee Brasil Used Books",
    territory="Brazil",
    base_url="https://shopee.com.br",
    browse_paths=("/search?keyword=livros%20usados", "/search?keyword=sebo%20livros"),
    detail_signals=("-i.", "/product/", "/livro"),
    exclude_signals=("/buyer", "/help", "/cart"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=5000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Shopee Brasil used-books spider")
