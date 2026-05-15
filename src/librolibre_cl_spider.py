from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="LibroLibre",
    territory="Chile",
    base_url="https://librolibre.cl",
    browse_paths=("/", "/libros", "/comprar-libros-usados"),
    detail_signals=("/libro/", "/libros/", "/producto/", "/books/"),
    exclude_signals=("/blog/", "/contacto", "/login"),
    headers={"Accept-Language": "es-CL,es;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "LibroLibre Chile spider")
