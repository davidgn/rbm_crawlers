from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="URBAN BOOKS",
    territory="Lebanon",
    base_url="https://urbanbooks1.com",
    browse_paths=("/product-category/books/", "/shop/", "/product-category/books/page/2/"),
    detail_signals=("/product/",),
    page_patterns=("{url}", "{url}page/{page}/", "{url}?product-page={page}"),
    headers={"Accept-Language": "en-LB,en;q=0.9,ar;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "URBAN BOOKS Lebanon marketplace spider")
