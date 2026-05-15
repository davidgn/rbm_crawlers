from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Thalia Zeercle",
    territory="Germany",
    base_url="https://www.thalia.de",
    browse_paths=("/gebrauchtbuch/verkauf", "/gebrauchtbuch", "/shop/home/rubrikartikel/ID141856605.html"),
    detail_signals=("/shop/home/artikeldetails/", "/artikel/", "/gebrauchtbuch/"),
    exclude_signals=("/hilfe", "/konto", "/warenkorb"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
    rendered=True,
    render_wait_ms=3500,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Thalia Zeercle used-books spider")
