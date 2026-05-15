from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="IberLibro",
    territory="Spain",
    base_url="https://www.iberlibro.com",
    browse_paths=("/Libros-Segunda-Mano/", "/buscar-libro/kw/libros-usados/", "/servlet/SearchResults?kn=libros%20usados"),
    detail_signals=("/servlet/BookDetailsPL", "/servlet/BookDetails", "/libro/"),
    headers={"Accept-Language": "es-ES,es;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "IberLibro Spain marketplace spider")
