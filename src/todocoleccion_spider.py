from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="todocoleccion Books",
    territory="Spain",
    base_url="https://www.todocoleccion.net",
    browse_paths=("/s/libros", "/libros-antiguos-segunda-mano/", "/s/libros-comics-revistas"),
    detail_signals=("/libros-", "/libro-", "/a/"),
    exclude_signals=("/ayuda", "/usuarios", "/carrito"),
    headers={"Accept-Language": "es-ES,es;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "todocoleccion Spain books spider")
