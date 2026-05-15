from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Carousell Indonesia Books",
    territory="Indonesia",
    base_url="https://id.carousell.com",
    browse_paths=("/categories/books-and-stationery-5/books-314/", "/books/q/"),
    detail_signals=("/p/", "/listings/", "/books-and-stationery/"),
    exclude_signals=("/help", "/login", "/sell"),
    headers={"Accept-Language": "id-ID,id;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Carousell Indonesia books spider")
