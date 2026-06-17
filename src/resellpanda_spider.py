from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider

CONFIG = MarketplaceConfig(
    platform_name="ResellPanda",
    territory="India",
    base_url="https://resellpanda.vercel.app",
    browse_paths=("/", "/home"),
    detail_signals=("/book/", "/listing/"),
    headers={"Accept-Language": "en-IN,en;q=0.9"},
    # The platform uses a Firebase RTDB backend for chats and an Azure API for books.
    # Currently, the Azure backend appears to be stopped (403).
)

if __name__ == "__main__":
    run_configured_spider(CONFIG, "ResellPanda India student marketplace spider")
