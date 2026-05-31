# Technical observations and decisions — 2026-04-30_post_tranche8_vFINAL

## Execution boundary

Two execution attempts were made from this runtime. Both confirmed a local DNS/network barrier for direct raw downloads/crawls. Mexico SIC remained accessible through the web observation tool, but the local shell/Python download path could not persist the full JSON/CSV/XML. Therefore no source was promoted to raw-harvest-backed.

## Source-class taxonomy retained

Use these classes without collapsing them:

- registry-grade
- network-grade
- member-grade
- publisher-sales-point
- chain-locator
- private-directory
- francophone-backbone
- church/campus bookstore network
- used-antiquarian overlay
- pickup-logistics-only
- inventory-commerce overlay
- voucher-acceptance overlay
- anchor-only
- historic-closed
- fallback/noisy/private directory
- cultural-infrastructure context only

## Row/entity governance

- A bookstore location is not the same as a publisher, distributor, chain HQ, online-only platform, stock observation, voucher participant, library, or book-fair contact.
- Association/member directories must be staged first, then classified into entity roles.
- Used/antiquarian overlays, general trade directories, and bookstore pickup networks remain separate lanes unless explicitly reconciled.
- Count claims are source-bound: page counts, directory counts, aggregate market estimates, and visible-row counts are not interchangeable.

## Runner strategy

Every probe tranche includes a runner or harvester script where possible. These scripts are intended for a network-enabled shell. On successful network execution, require at minimum:

1. raw source payload(s), unmodified;
2. download metadata with URL, timestamp, HTTP status, and SHA256;
3. normalized CSV with source_class/entity_role fields;
4. row-count reconciliation report;
5. evidence ledger and artifact manifest.

## High-priority network-enabled targets

1. Mexico SIC — official JSON/CSV/XML bookstore directory; first promotion target.
2. France data.gouv — official Base des librairies en France CSV, updated 2026-04-20 at probe time.
3. Chile Frankfurt 2027 — ministry/culture ecosystem contact directory with Librerías sheet/export candidate.
4. Spain TTL — profile crawl and pagination count reconciliation.
5. Poland OBK — static HTML crawl, count mismatch preservation.
6. Greece BIBLIONET — row-level bookstore profiles.
7. Sweden — Hitta bokhandlare directory.
8. Czechia — SČKN mixed member database with role classification.

## Packaging decision

This handoff ZIP is flat. Older ZIP wrappers are excluded as binary nested archives, but their non-ZIP contents are extracted into the root using source-prefixed filenames.
