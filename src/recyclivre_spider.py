from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Recyclivre",
    territory="France",
    base_url="https://www.recyclivre.com",
    browse_paths=("/", "/shop", "/products"),
    detail_signals=("/products/", "/product/", "/livre/"),
    headers={
        "Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8",
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"
        ),
    },
    cloudscraper=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Recyclivre France spider")
