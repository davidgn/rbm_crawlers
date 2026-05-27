from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="7788旧书",
    territory="China (mainland)",
    base_url="https://7788js.7788.com",
    browse_paths=("/", "/pr/", "/sort_0_0_0_0_default_0_1/"),
    detail_signals=("/pr/item_", "/pr/history_"),
    page_patterns=("{url}", "{url}?page={page}", "{url}_{page}.html"),
    headers={
        "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8",
        "Referer": "https://7788js.7788.com/",
    },
    link_fallback_on_detail_failure=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "7788 old-books China marketplace spider")
