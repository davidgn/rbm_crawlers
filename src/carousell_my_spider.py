from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Carousell Malaysia Books",
    territory="Malaysia",
    base_url="https://www.carousell.com.my",
    browse_paths=("/hobbies-toys/books-magazines/", "/used-books/q/"),
    detail_signals=("/p/", "/listings/", "/books-magazines/"),
    exclude_signals=("/help", "/login", "/sell"),
    headers={"Accept-Language": "en-MY,en;q=0.9,ms;q=0.8"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Carousell Malaysia books spider")
