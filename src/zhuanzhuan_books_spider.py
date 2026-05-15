from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Zhuanzhuan Books",
    territory="China",
    base_url="https://m.zhuanzhuan.com",
    browse_paths=("/open/ZZBook/index.html", "/search?keyword=%E5%9B%BE%E4%B9%A6"),
    detail_signals=("/detail/", "/item/", "/open/"),
    exclude_signals=("/help", "/login", "/user"),
    headers={"Accept-Language": "zh-CN,zh;q=0.9,en;q=0.7"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Zhuanzhuan China books recommerce spider")
