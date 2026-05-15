from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Shopee Thailand Used Books",
    territory="Thailand",
    base_url="https://shopee.co.th",
    browse_paths=(
        "/search?keyword=%E0%B8%AB%E0%B8%99%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B7%E0%B8%AD%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%AA%E0%B8%AD%E0%B8%87",
        "/search?keyword=secondhand%20books",
    ),
    detail_signals=("-i.", "/product/", "/book"),
    exclude_signals=("/buyer", "/help", "/cart"),
    headers={"Accept-Language": "th-TH,th;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=5000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Shopee Thailand secondhand-books spider")
