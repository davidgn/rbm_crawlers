from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Saxo Used Books",
    territory="Denmark",
    base_url="https://www.saxo.com",
    browse_paths=("/dk/side/information/antikvariater", "/dk/boeger", "/dk/search"),
    detail_signals=("/dk/products/", "/dk/bog/", "/dk/book/"),
    headers={"Accept-Language": "da-DK,da;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Saxo Denmark used-books spider")
