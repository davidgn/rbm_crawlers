from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Hugendubel Zeercle",
    territory="Germany",
    base_url="https://www.hugendubel.de",
    browse_paths=("/de/category/102317/gebrauchtbuch.html", "/de/category/102317/gebrauchtbuch.html?start=0"),
    detail_signals=("/de/taschenbuch/", "/de/buch_gebunden/", "/de/ebook_epub/", "/artikel/"),
    exclude_signals=("/hilfe", "/konto", "/warenkorb"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Hugendubel Zeercle used-books spider")
