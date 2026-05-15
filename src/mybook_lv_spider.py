from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="myBook.lv",
    territory="Latvia",
    base_url="https://www.mybook.lv",
    browse_paths=("/lv", "/?lg=en", "/lv/sludinajumi"),
    detail_signals=("/sludinajums/", "/en/sludinajums/", "/lv/sludinajums/"),
    headers={"Accept-Language": "lv-LV,lv;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "myBook.lv Latvia marketplace spider")
