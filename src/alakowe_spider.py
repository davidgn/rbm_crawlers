from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ALAKOWE",
    territory="Nigeria",
    base_url="https://www.instagram.com/the_alakowe/",
    browse_paths=("",),
    detail_signals=("/p/", "/reel/"),
    social_profile=True,
    headers={"Accept-Language": "en-NG,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ALAKOWE Nigeria social marketplace spider")
