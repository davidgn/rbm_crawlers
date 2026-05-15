from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Lamarlib",
    territory="Mali",
    base_url="https://www.facebook.com/lamarlib/",
    browse_paths=("",),
    detail_signals=("/posts/", "/photos/", "/permalink.php"),
    social_profile=True,
    headers={
        "Accept-Language": "fr-FR,fr;q=0.9,en;q=0.8",
        "User-Agent": "Mozilla/5.0",
    },
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Lamarlib Mali social marketplace spider")
