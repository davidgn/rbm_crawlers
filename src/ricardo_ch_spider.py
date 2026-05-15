from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Ricardo Switzerland Books",
    territory="Switzerland",
    base_url="https://www.ricardo.ch",
    browse_paths=("/de/c/buecher-82017/", "/de/s/b%C3%BCcher/"),
    detail_signals=("/de/a/", "/fr/a/", "/it/a/"),
    exclude_signals=("/help", "/my", "/checkout"),
    headers={"Accept-Language": "de-CH,de;q=0.9,fr-CH;q=0.8,en;q=0.7"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Ricardo Switzerland books spider")
