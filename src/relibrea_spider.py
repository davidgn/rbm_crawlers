from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Relibrea",
    territory="Spain",
    base_url="https://www.relibrea.com",
    browse_paths=("/", "/libros", "/buscar"),
    detail_signals=("/libro/", "/books/", "/book/", "/producto/"),
    headers={"Accept-Language": "es-ES,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Relibrea Spain spider")
