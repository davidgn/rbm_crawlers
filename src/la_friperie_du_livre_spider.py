from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="La Friperie du Livre",
    territory="Benin",
    base_url="https://www.facebook.com/p/La-Friperie-du-Livre-61576751756556/",
    browse_paths=("",),
    detail_signals=("/posts/", "/photos/", "/permalink.php"),
    headers={
        "Accept-Language": "fr-BJ,fr;q=0.9,en;q=0.8",
        "User-Agent": "Mozilla/5.0",
    },
    social_profile=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "La Friperie du Livre Benin social marketplace spider")
