from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="CompartirLibros",
    territory="Panama",
    base_url="https://www.compartirlibros.com",
    browse_paths=("/", "/libros", "/books", "/productos"),
    detail_signals=("/libro/", "/books/", "/product/", "/producto/"),
    headers={"Accept-Language": "es-PA,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "CompartirLibros Panama marketplace spider")
