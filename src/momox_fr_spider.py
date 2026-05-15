from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Momox France",
    territory="France",
    base_url="https://www.momox-shop.fr",
    browse_paths=("/livres/", "/", "/recherche?fcIsSearch=1&searchparam=livre"),
    detail_signals=("/livres/", "/media/", "/product/"),
    headers={"Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Momox France spider")
