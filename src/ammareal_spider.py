from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Ammareal",
    territory="France",
    base_url="https://www.ammareal.fr",
    browse_paths=("/", "/livres", "/recherche?query=livre"),
    detail_signals=("/livre/", "/products/", "/product/"),
    headers={"Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Ammareal France spider")
