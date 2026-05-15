from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Preloved.co.id Books",
    territory="Indonesia",
    base_url="https://preloved.co.id",
    browse_paths=("/categories/hiburan/books", "/categories/hiburan/books/fiction"),
    detail_signals=("/products/", "/product/", "/items/"),
    exclude_signals=("/help", "/login", "/cart"),
    headers={"Accept-Language": "id-ID,id;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Preloved.co.id Indonesia books spider")
