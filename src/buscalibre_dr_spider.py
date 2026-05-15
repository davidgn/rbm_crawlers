from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Buscalibre Dominican Republic",
    territory="Dominican Republic",
    base_url="https://www.buscalibre.com",
    browse_paths=("/do-es/libros/search?q=usado", "/do-es/libros", "/do-es/libros/derecho"),
    detail_signals=("/libro-", "/book-", "/producto/", "/products/"),
    exclude_signals=("/int-es/", "/cl/", "/co/", "/pe/", "/uy/", "/mx/", "/us/"),
    headers={"Accept-Language": "es-DO,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Buscalibre Dominican Republic books spider")
