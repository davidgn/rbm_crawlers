from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider

CONFIG = MarketplaceConfig(
    platform_name="BookSwapHub",
    territory="India",
    base_url="https://dignizant.com", # Developer site
    browse_paths=("/",),
    detail_signals=(), 
    social_profile=True, # Placeholder for manual/social extraction
    headers={"Accept-Language": "en-IN,en;q=0.9"},
)

if __name__ == "__main__":
    run_configured_spider(CONFIG, "BookSwapHub India book exchange spider")
