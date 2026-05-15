from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Book.id.LV",
    territory="Latvia",
    base_url="https://book.id.lv",
    browse_paths=("/", "/books", "/gramatas"),
    detail_signals=("/book/", "/books/", "/gramata/", "/item/"),
    headers={"Accept-Language": "lv-LV,lv;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Book.id.LV Latvia spider")
