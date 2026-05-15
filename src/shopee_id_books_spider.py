from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Shopee Indonesia Used Books",
    territory="Indonesia",
    base_url="https://shopee.co.id",
    browse_paths=("/search?category=11044123&keyword=buku%20bekas", "/search?keyword=buku%20bekas"),
    detail_signals=("-i.", "/product/", "/buku"),
    exclude_signals=("/buyer", "/help", "/cart"),
    headers={"Accept-Language": "id-ID,id;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=5000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Shopee Indonesia used-books spider")
