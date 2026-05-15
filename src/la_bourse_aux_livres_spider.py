from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="La Bourse aux Livres",
    territory="France",
    base_url="https://labourseauxlivres.fr",
    browse_paths=("/", "/collections/livres", "/search?q=livre"),
    detail_signals=("/products/", "/product/", "/livre/"),
    headers={"Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "La Bourse aux Livres France spider")
