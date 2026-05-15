from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bokliv.se",
    territory="Sweden",
    base_url="https://bokliv.se",
    browse_paths=("/pages/bocker", "/collections/all", "/collections/bocker"),
    detail_signals=("/products/", "/product/", "/bocker/"),
    headers={"Accept-Language": "sv-SE,sv;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bokliv.se Sweden spider")
