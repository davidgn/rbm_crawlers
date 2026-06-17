from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider

CONFIG = MarketplaceConfig(
    platform_name="ResellBooks",
    territory="India",
    base_url="https://rebooks.in",
    browse_paths=("/",),
    detail_signals=(), # No direct web listings; site points to Instagram/Telegram
    social_profile=True,
    headers={"Accept-Language": "en-IN,en;q=0.9"},
)

if __name__ == "__main__":
    run_configured_spider(CONFIG, "ResellBooks (ReBooks.in) India social marketplace spider")
