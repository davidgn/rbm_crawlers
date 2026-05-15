from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="MercadoLibro Colombia",
    territory="Colombia",
    base_url="https://mercadolibro.co",
    browse_paths=("/", "/libros", "/directorio"),
    detail_signals=("/libro/", "/books/", "/book/", "/listing/"),
    headers={"Accept-Language": "es-CO,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "MercadoLibro Colombia spider")
