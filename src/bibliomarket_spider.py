from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="BiblioMarket",
    territory="Argentina",
    base_url="https://www.bibliomarket.com.ar",
    browse_paths=("/", "/libros", "/buscar"),
    detail_signals=("/libro/", "/books/", "/book/", "/producto/"),
    headers={"Accept-Language": "es-AR,es;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "BiblioMarket Argentina spider")
