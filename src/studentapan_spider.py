from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Studentapan",
    territory="Sweden",
    base_url="https://www.studentapan.se",
    browse_paths=("/kurslitteratur", "/sok", "/"),
    detail_signals=("/kurslitteratur/", "/bok/", "/produkt/"),
    headers={"Accept-Language": "sv-SE,sv;q=0.9,en;q=0.8"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Studentapan Sweden spider")
