from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookbot Italy",
    territory="Italy",
    base_url="https://bookbot.it",
    browse_paths=("/", "/libri", "/c/vendere-libri"),
    detail_signals=("/libro/", "/books/", "/book/", "/prodotto/"),
    exclude_signals=("/aiuto", "/privacy", "/termini"),
    headers={"Accept-Language": "it-IT,it;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookbot Italy used-books spider")
