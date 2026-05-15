from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Buscalibre Uruguay",
    territory="Uruguay",
    base_url="https://www.buscalibre.uy",
    browse_paths=("/libros/ficcion", "/libros", "/libros-usados"),
    detail_signals=("/libro-", "/book-", "/producto/", "/products/"),
    rendered=True,
    headers={"Accept-Language": "es-UY,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Buscalibre Uruguay books spider")
