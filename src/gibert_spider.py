from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Gibert",
    territory="France",
    base_url="https://www.gibert.com",
    browse_paths=("/", "/livres", "/recherche/livre"),
    detail_signals=(".html", "/livre/", "/product/"),
    exclude_signals=("/customer/", "/account/", "/checkout/"),
    headers={"Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Gibert France spider")
