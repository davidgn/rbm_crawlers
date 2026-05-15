from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bokborsen",
    territory="Sweden",
    base_url="https://www.bokborsen.se",
    browse_paths=("/", "/sok", "/kategori/bocker"),
    detail_signals=("/view/", "/bok/", "/annons/", "/item/"),
    headers={"Accept-Language": "sv-SE,sv;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bokborsen Sweden marketplace spider")
