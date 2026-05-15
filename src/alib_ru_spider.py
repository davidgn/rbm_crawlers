from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Alib.ru",
    territory="Russia",
    base_url="https://www.alib.ru",
    browse_paths=("/tlit.phtml", "/tanist.phtml", "/tdetekti.phtml", "/tdeto.phtml"),
    detail_signals=("/bs.php4",),
    exclude_signals=("/findp.php4", "/find3.php4", "/mail2bf", "/foto.php4"),
    headers={"Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Alib.ru Russia spider")
