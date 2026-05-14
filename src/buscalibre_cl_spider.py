from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Buscalibre Chile",
    territory="Chile",
    base_url="https://www.buscalibre.cl",
    browse_paths=("/libros/search?q=usado", "/libros", "/libros-usados"),
    detail_signals=("/libro-", "/book-", "/producto/", "/products/"),
    headers={"Accept-Language": "es-CL,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Buscalibre Chile books spider")
