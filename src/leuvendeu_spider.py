from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="LeuVendeu",
    territory="Brazil",
    base_url="https://leuvendeu.com.br",
    browse_paths=("/home/", "/?s=livro&post_type=product", "/loja"),
    detail_signals=("/livro/", "/product/", "/produto/"),
    headers={"Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "LeuVendeu Brazil spider")
