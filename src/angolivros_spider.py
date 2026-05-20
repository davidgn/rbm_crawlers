from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Angolivros",
    territory="Angola",
    base_url="https://angolivros.ao",
    browse_paths=("/", "/livros/", "/loja/", "/shop/"),
    detail_signals=("/produto/", "/product/", "/livro/", "/book/"),
    headers={"Accept-Language": "pt-AO,pt;q=0.9,en;q=0.8"},
    link_fallback_on_detail_failure=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Angolivros Angola marketplace spider")
