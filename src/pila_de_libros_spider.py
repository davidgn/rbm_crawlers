from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Pila de Libros",
    territory="Argentina",
    base_url="https://piladelibros.com",
    browse_paths=("/", "/libros", "/books", "/explorar"),
    detail_signals=("/libro/", "/libros/", "/book/", "/books/"),
    exclude_signals=("/blog/", "/contacto", "/login"),
    headers={"Accept-Language": "es-AR,es;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Pila de Libros Argentina exchange spider")
