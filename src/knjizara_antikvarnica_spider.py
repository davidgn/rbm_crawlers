from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Knjizara.com Antikvarnica",
    territory="Serbia",
    base_url="https://www.knjizara.com",
    browse_paths=("/antikvarnica/", "/antikvarnica/pretraga"),
    detail_signals=("/antikvarnica/", "/knjiga/", "/book/"),
    exclude_signals=("/kontakt", "/korpa", "/login"),
    headers={"Accept-Language": "sr-RS,sr;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Knjizara.com Serbia antikvarnica spider")
