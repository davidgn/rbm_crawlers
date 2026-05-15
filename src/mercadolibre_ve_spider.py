from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Mercado Libre Venezuela Used Books",
    territory="Venezuela",
    base_url="https://listado.mercadolibre.com.ve",
    browse_paths=("/libros-revistas-y-comics/libros-fisicos/usados/venta-de-libros-usados-variados",),
    detail_signals=("/MLV-", "/p/"),
    exclude_signals=("/ayuda", "/account", "/ofertas"),
    allowed_hosts=("articulo.mercadolibre.com.ve", "www.mercadolibre.com.ve"),
    headers={"Accept-Language": "es-VE,es;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Mercado Libre Venezuela used-books spider")
