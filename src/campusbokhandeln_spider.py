from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Campusbokhandeln",
    territory="Sweden",
    base_url="https://campusbokhandeln.se",
    browse_paths=("/bocker", "/sok", "/"),
    detail_signals=("/bok/", "/books/", "/produkt/", "/product/"),
    headers={"Accept-Language": "sv-SE,sv;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Campusbokhandeln Sweden spider")
