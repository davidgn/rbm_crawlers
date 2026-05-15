from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Sebo Talatona",
    territory="Angola",
    base_url="https://www.facebook.com/p/Sebo-Livros-usados-61553042992564/",
    browse_paths=("",),
    detail_signals=("/posts/", "/photos/", "/permalink.php"),
    headers={
        "Accept-Language": "pt-AO,pt;q=0.9,en;q=0.8",
        "User-Agent": "Mozilla/5.0",
    },
    social_profile=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Sebo Talatona Angola social marketplace spider")
