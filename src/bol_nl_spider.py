from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="bol Netherlands Used Books",
    territory="Netherlands",
    base_url="https://www.bol.com",
    browse_paths=("/nl/nl/l/tweedehands-boeken/8299/1426/", "/nl/nl/s/?searchtext=tweedehands+boeken"),
    detail_signals=("/nl/nl/p/", "/p/"),
    exclude_signals=("/klantenservice", "/account", "/winkelwagen"),
    headers={"Accept-Language": "nl-NL,nl;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "bol Netherlands used-books spider")
