from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="OLX Uzbekistan Books",
    territory="Uzbekistan",
    base_url="https://www.olx.uz",
    browse_paths=("/d/hobbi-otdyh-sport/knigi-zhurnaly/", "/d/hobbi-otdyh-sport/knigi-zhurnaly/tashkent/"),
    detail_signals=("/d/obyavlenie/", "/d/hobbi-otdyh-sport/knigi-zhurnaly/"),
    exclude_signals=("/help", "/account", "/post-new-ad", "/favorites"),
    headers={"Accept-Language": "ru-UZ,ru;q=0.9,uz;q=0.8,en;q=0.7"},
    rendered=True,
    render_wait_ms=5000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "OLX Uzbekistan books classifieds spider")
