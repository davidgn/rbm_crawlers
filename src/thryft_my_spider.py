from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Thryft Malaysia",
    territory="Malaysia",
    base_url="https://thryft.asia",
    browse_paths=("/collections/all", "/collections/books", "/"),
    detail_signals=("/products/",),
    exclude_signals=("/account", "/cart", "/pages"),
    headers={"Accept-Language": "en-MY,en;q=0.9,ms;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Thryft Malaysia preloved-books spider")
