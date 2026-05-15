from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Trade Stories",
    territory="Portugal",
    base_url="https://tradestories.pt",
    browse_paths=("/", "/search", "/category/livros", "/livros-usados"),
    detail_signals=("/listing/", "/item/", "/livro/", "/anuncio/"),
    exclude_signals=("/user/", "/user/login", "/login", "/account", "/cart"),
    headers={"Accept-Language": "pt-PT,pt;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Trade Stories Portugal marketplace spider")
