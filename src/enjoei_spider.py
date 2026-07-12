"""Spider for Enjoei (enjoei.com.br) — Brazilian C2C resale marketplace.

Enjoei is a heavy JavaScript/Vue.js SPA, so product cards are only visible after
the browser executes client-side rendering.  We therefore use the rendered=True
path inside ConfigurableMarketplaceSpider (Playwright headless Chromium).

Listing URL shape:
    /p/{slug}-{numeric-id}
    e.g. https://www.enjoei.com.br/p/livro-harry-potter-12345678

Browse paths target the book and literature categories as well as a generic
"livros" search.  The site supports pagination via the `page` query-string
parameter appended to search/category URLs.
"""

from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Enjoei",
    territory="Brazil",
    base_url="https://www.enjoei.com.br",
    browse_paths=(
        "/s?q=livros",
        "/s?q=livro+usado",
        "/s?q=sebo+livros",
        "/s?q=livros+infantis",
    ),
    # Product detail pages always contain "/p/" in the path
    detail_signals=("/p/",),
    # Exclude navigation, auth, and account paths
    exclude_signals=(
        "/login",
        "/cadastro",
        "/conta",
        "/carrinho",
        "/ajuda",
        "/politica",
        "/termos",
        "/seller",
        "/wishlist",
        "/notificacoes",
        "#",
    ),
    # Enjoei paginates search results with ?page=N
    page_patterns=(
        "{url}&page={page}",
        "{url}?page={page}",
    ),
    headers={
        "Accept-Language": "pt-BR,pt;q=0.9,en;q=0.8",
        "Referer": "https://www.enjoei.com.br/",
    },
    # Must render JS — product cards are client-side rendered by Vue.js
    rendered=True,
    # Give Vue time to mount and hydrate the product grid
    render_wait_ms=4000,
    render_timeout_ms=45_000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Enjoei (enjoei.com.br) Brazilian C2C book listings spider")
