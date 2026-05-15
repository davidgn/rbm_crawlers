from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Carousell Hong Kong Books",
    territory="Hong Kong",
    base_url="https://www.carousell.com.hk",
    browse_paths=(
        "/categories/books-stationery-3203/",
        "/%E8%88%88%E8%B6%A3%E5%8F%8A%E9%81%8A%E6%88%B2/%E6%95%99%E7%A7%91%E6%9B%B8/%E4%BA%8C%E6%89%8B%E6%9B%B8/q-15/",
    ),
    detail_signals=("/p/", "/listings/", "/books-stationery/"),
    exclude_signals=("/help", "/login", "/sell"),
    headers={"Accept-Language": "zh-HK,zh;q=0.9,en-HK;q=0.8,en;q=0.7"},
    rendered=True,
    render_wait_ms=4500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Carousell Hong Kong books spider")
