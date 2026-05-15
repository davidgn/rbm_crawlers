from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Jualo Indonesia Books",
    territory="Indonesia",
    base_url="https://www.jualo.com",
    browse_paths=("/search?keyword=buku%20bekas", "/buku"),
    detail_signals=("/buku-", "/item/", "/produk/"),
    exclude_signals=("/help", "/login", "/pasang-iklan"),
    headers={"Accept-Language": "id-ID,id;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Jualo Indonesia used-books spider")
