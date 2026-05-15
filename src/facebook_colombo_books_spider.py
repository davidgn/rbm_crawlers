from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Facebook Marketplace Colombo Books",
    territory="Sri Lanka",
    base_url="https://www.facebook.com/marketplace/112660232078681/books/",
    browse_paths=("/",),
    detail_signals=("/marketplace/item/",),
    exclude_signals=("/login", "/privacy", "/policies"),
    headers={"Accept-Language": "en-LK,en;q=0.9,si;q=0.8,ta;q=0.7"},
    rendered=True,
    render_wait_ms=5000,
    social_profile=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Facebook Marketplace Colombo books cache spider")
