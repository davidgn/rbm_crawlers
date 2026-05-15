from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Biblio UK",
    territory="United Kingdom",
    base_url="https://biblio.co.uk",
    browse_paths=("/", "/search.php", "/books"),
    detail_signals=("/book/", "/books/", "/isbn/"),
    headers={
        "Accept-Language": "en-GB,en;q=0.9",
        "User-Agent": (
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
            "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15"
        ),
    },
    curl_impersonate="chrome124",
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Biblio UK spider")
