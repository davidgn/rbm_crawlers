# Spain CEGAL / TodosTusLibros probe report — 2026-04-25

## Governed status

**Status:** `static_listing_probe_complete_full_harvest_needed`  
**Recommended source class:** `network-grade / registry-network` rather than government/open-data `registry-grade`.

The Spain seam is not like Mexico SIC or Argentina SInCA. It is a very strong sector-owned public network surface with real bookstore profiles, but I did not find a public bulk CSV/JSON export. The correct next step is a polite paginated/profile crawl, not a bulk-download harvest.

## Main findings

1. CEGAL describes TodosTusLibros as a bibliographic, commerce, interaction, and cultural-diffusion service created through the union of bookshops and associations/guilds.
2. The public `/librerias` page exposes a `Librerías asociadas` listing/search interface with bookstore rows and profile links.
3. Store profile pages expose richer public contact fields: store name, street address, postal code, city, province, hours, phone, website, and email.
4. The current official CEGAL Mapa de Librerías 2024|2025 reports:
   - **2,754** independent bookstores identified in Spain.
   - **776** bookstores forming part of Todostuslibros.com.
5. The visible TTL listing pagination matches the 776 count: page 1 uses a 25-row list, pagination runs through page 32, and the observed seeded page 32 has one store row, yielding `31*25 + 1 = 776`. This is strong count alignment, but the final live count still needs a full crawl ledger and hash manifest.

## Count governance

Use **776** as the current governed TTL platform-member count for planning, marked `official_report_plus_static_pagination_supported`. Do **not** treat it as a raw-export count until the included harvester is run successfully and every profile URL is hashed.

Use **2,754** as the broader Spain independent-bookstore census context from CEGAL's Mapa de Librerías 2024|2025. This broader number is not equivalent to TTL platform membership and should not be merged into the TTL store table.

## Extraction plan

1. Crawl `https://www.todostuslibros.com/librerias` plus paginated `/librerias?page=N&seed=...` pages.
2. Extract `/libreria/<slug>_<id>` profile URLs and listing-level name/address snippets.
3. Crawl each profile page for normalized public contact fields.
4. Output two ledgers:
   - `ttl_listing_profile_url_ledger.csv`
   - `ttl_profile_normalized.csv`
5. Compare the number of unique profile URLs with 776.
6. Keep title availability/product data out of the store registry table. If useful later, harvest those into a separate `inventory_availability_observation` table.

## Runtime limitation

This runtime could view pages through the web tool, but direct local network fetching timed out. Therefore this checkpoint contains a probe, normalized sample, field map, evidence ledger, manifest update, and ready-to-run harvester script. It does not claim to contain the full live TTL export.

## Immediate next move

Run `spain_cegal_ttl_harvester_2026-04-25.py` in a normal networked runtime. If the full crawl is deferred, proceed to Poland OBK as the next tranche source while carrying Spain as `full_crawl_ready`.
