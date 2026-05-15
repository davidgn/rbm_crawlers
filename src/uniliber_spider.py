from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Uniliber",
    territory="Spain",
    base_url="https://www.uniliber.com",
    browse_paths=("/", "/buscar/libros", "/catalogos/libros"),
    detail_signals=("/ficha/", "/libro/", "/producto/", "/book/"),
    rendered=True,
    render_wait_ms=7000,
    headers={"Accept-Language": "es-ES,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Uniliber Spain marketplace spider")
