from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="BookCycle",
    territory="Bangladesh",
    base_url="https://bookcyclebd.netlify.app",
    browse_paths=("/", "/browse", "/books", "/search?q=book"),
    detail_signals=("/book/",),
    rendered=True,
    render_wait_ms=7000,
    headers={"Accept-Language": "en-BD,en;q=0.9,bn;q=0.8"},
    link_fallback_on_detail_failure=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "BookCycle Bangladesh used-books marketplace spider")
