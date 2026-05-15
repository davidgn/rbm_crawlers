from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="iBok.no",
    territory="Norway",
    base_url="https://ibok.no",
    browse_paths=("/", "/sok", "/boker"),
    detail_signals=("/bok/", "/annonse/", "/books/", "/book/"),
    headers={"Accept-Language": "nb-NO,nb;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "iBok.no Norway spider")
