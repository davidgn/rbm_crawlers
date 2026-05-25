from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Carousell Philippines Books",
    territory="Philippines",
    base_url="https://www.carousell.ph",
    browse_paths=("/categories/hobbies-toys-8/books-magazines-10/", "/categories/books-magazines-10/"),
    detail_signals=("/p/", "/listings/", "/books-magazines/"),
    exclude_signals=("/help", "/login", "/sell"),
    headers={"Accept-Language": "en-PH,en;q=0.9"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Carousell Philippines books spider")
