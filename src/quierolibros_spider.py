from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="QuieroLibros",
    territory="Spain",
    base_url="https://www.quierolibros.com",
    browse_paths=("/", "/libros", "/buscar"),
    detail_signals=("/libro/", "/books/", "/book/", "/producto/"),
    headers={"Accept-Language": "es-ES,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "QuieroLibros Spain spider")
