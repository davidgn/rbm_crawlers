from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Portal dos Livreiros",
    territory="Brazil",
    base_url="https://www.portaldoslivreiros.com.br",
    browse_paths=("/", "/busca.asp", "/livros"),
    detail_signals=("/livro.asp", "livro.asp?codigo=", "/book/"),
    headers={
        "Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8",
        "User-Agent": (
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
            "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15"
        ),
    },
    cloudscraper=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Portal dos Livreiros Brazil spider")
