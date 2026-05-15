from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookbot Austria",
    territory="Austria",
    base_url="https://bookbot.at",
    browse_paths=("/", "/buecher", "/c/bucher-verkaufen"),
    detail_signals=("/buch/", "/books/", "/book/", "/produkt/"),
    exclude_signals=("/hilfe", "/privacy", "/agb"),
    headers={"Accept-Language": "de-AT,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookbot Austria used-books spider")
