# Network-enabled harvest runbook — 2026-04-30_post_tranche8_vFINAL

This runbook exists because the current runtime could not directly download/crawl external sources.

## Promotion criteria: probe-backed → raw-harvest-backed

A source can be promoted only when the bundle has:

- raw payload file(s), ideally untouched;
- source URL(s), retrieval timestamp, HTTP status, and SHA256 hash;
- normalized CSV with durable source identifiers where possible;
- row count and count reconciliation note;
- source-evidence ledger;
- artifact manifest.

## First export targets

### Mexico SIC

Use the Mexico harvester/script from the Mexico probe files. Expected outputs: raw JSON/CSV/XML or XLSX where available; normalized bookstore CSV; state count reconciliation; download manifest.

### France data.gouv

Download the official Base des librairies en France CSV from data.gouv. Preserve dataset metadata and the explicit non-exhaustiveness statement.

### Chile Frankfurt 2027

Resolve the Google Sheet export for Librerías. Preserve source URL, sheet/export ID, retrieval timestamp, and whether the sheet was public/exportable.

## First crawler targets

- Spain TTL listing/profile crawler.
- Poland OBK static HTML crawler.
- Greece BIBLIONET profile crawler.
- Sweden booksellers.se directory crawler.
- Czechia SČKN member database crawler with role classification.

## QA fields to preserve

`source_class`, `entity_role_primary`, `entity_role_secondary`, `country`, `source_name`, `source_url`, `raw_name`, `normalized_name`, `address_raw`, `city`, `region`, `postal_code`, `country_subdivision`, `phone`, `email`, `website`, `lat`, `lon`, `profile_url`, `last_seen_date`, `harvest_timestamp`, `confidence`, `status_note`, `promotion_status`, `evidence_basis`.
