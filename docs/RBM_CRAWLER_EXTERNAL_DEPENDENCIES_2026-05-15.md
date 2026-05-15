# RBM crawler external dependencies - 2026-05-15

This pass added or confirmed two non-standard runtime dependencies for a small
number of crawlers.

## Firecrawl CLI

Used only by `src/comprovendolibri_spider.py`.

Reason: ComproVendoLibri returns Cloudflare Managed Challenge pages to local
`httpx`, `curl_cffi`, `cloudscraper`, and Playwright. The Firecrawl CLI can
retrieve the rendered catalog page, after which the spider parses the cached
HTML locally.

Operational notes:

- Requires the `firecrawl` CLI to be installed and authenticated.
- Consumes Firecrawl credits.
- The spider caches both the Firecrawl JSON response and the extracted raw HTML
  under `src/cache/comprovendolibri_it/`.
- Keep this dependency scoped to ComproVendoLibri unless another site is
  explicitly approved for external fetching.

Validation from this pass:

- `python3 src/comprovendolibri_spider.py --limit-pages 2 --limit-items 25`
- `python3 scripts/smoke_spider_matrix.py src/comprovendolibri_spider.py --timeout 150 --workers 1 --limit-pages 1 --limit-items 2 --json-out logs/comprovendolibri_firecrawl_smoke_2026-05-15.json`

## curl_cffi

Used by:

- `src/olx_id_spider.py`
- configurable wrappers that set `curl_impersonate`

Reason: several sites require browser-like TLS impersonation. OLX Indonesia also
uses an Akamai interstitial before its JSON API; `src/olx_id_spider.py` solves
that site-specific verification flow and then fetches `/api/relevance/v5/search`.

Install note:

```bash
python3 -m pip install --user curl_cffi
```

## Generated artifacts

The full matrix smoke and Compro larger crawl generated cache, data, and log
files. Treat these as validation evidence unless a commit explicitly needs sample
fixtures:

- `src/cache/comprovendolibri_it/`
- `src/data/comprovendolibri_it_listings.jsonl`
- `logs/comprovendolibri_firecrawl_smoke_2026-05-15.json`
- `logs/full_configurable_smoke_2026-05-15_after_compro.json`
- `logs/configurable_spider_audit_2026-05-15_diag12_after_full_smoke.json`

`src/data/` is ignored by `.gitignore`; many cache/log files are also generated
state from live smoke runs and should be reviewed before staging.
