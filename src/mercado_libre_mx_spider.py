from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Mercado Libre Mexico Libros",
    territory="Mexico",
    base_url="https://listado.mercadolibre.com.mx",
    browse_paths=("/libros-usados",),
    detail_signals=("/MLM-", "/p/"),
    exclude_signals=("/glossary/", "/ayuda/", "/account-verification"),
    allowed_hosts=("articulo.mercadolibre.com.mx", "www.mercadolibre.com.mx"),
    rendered=True,
    headers={"Accept-Language": "es-MX,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Mercado Libre Mexico books spider")
