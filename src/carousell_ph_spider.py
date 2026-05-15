from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Carousell Philippines Books",
    territory="Philippines",
    base_url="https://www.carousell.ph",
    browse_paths=("/categories/hobbies-toys-5136/books-magazines-5/", "/books/q/"),
    detail_signals=("/p/", "/listings/", "/books-magazines/"),
    exclude_signals=("/help", "/login", "/sell"),
    headers={"Accept-Language": "en-PH,en;q=0.9,fil;q=0.8"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Carousell Philippines books spider")
