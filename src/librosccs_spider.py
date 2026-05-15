from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Libros.ccs",
    territory="Venezuela",
    base_url="https://librosccs.com",
    browse_paths=("/", "/collections/libros", "/collections/all"),
    detail_signals=("/products/", "/collections/"),
    exclude_signals=("/cart", "/account", "/policies"),
    headers={"Accept-Language": "es-VE,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Libros.ccs Venezuela used-books spider")
