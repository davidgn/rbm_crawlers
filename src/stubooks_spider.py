from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Stubooks.be",
    territory="Belgium",
    base_url="https://www.stubooks.be",
    browse_paths=("/", "/books", "/search"),
    detail_signals=("/book/", "/books/", "/item/", "/product/"),
    headers={"Accept-Language": "nl-BE,nl;q=0.9,fr-BE;q=0.8,en;q=0.7"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Stubooks Belgium spider")
