from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="TodosTusLibros",
    territory="Spain",
    base_url="https://www.todostuslibros.com",
    browse_paths=("/", "/libros", "/mas_vendidos"),
    detail_signals=("/libros/", "/ebook/", "/materias/"),
    exclude_signals=("/librerias", "/usuarios", "/cesta"),
    headers={"Accept-Language": "es-ES,es;q=0.9,en;q=0.8"},
    cloudscraper=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "TodosTusLibros Spain book network spider")
