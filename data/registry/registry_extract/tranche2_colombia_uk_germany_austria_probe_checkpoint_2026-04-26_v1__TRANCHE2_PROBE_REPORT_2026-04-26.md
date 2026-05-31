# Tranche 2 core probe — Colombia / UK-Ireland / Germany / Austria — 2026-04-26

## What changed
Because local raw-download execution remains network/DNS blocked, this pass continued productive work by converting the next four high-priority sources from queue entries into file-backed probe surfaces with a unified manifest, field map, evidence ledger, normalized sample rows, and a network-enabled crawler skeleton.

## Sources promoted to probe-backed
1. Colombia — Camlibro / Librerías Colombia
2. United Kingdom & Ireland — Booksellers Association Bookshop Search
3. Germany — genialokal dealer/bookstore network
4. Austria — buchhandel.at / Hauptverband des Österreichischen Buchhandels

## Count/status governance
- Colombia: current public directory says 481 bookstores in 50 cities; 2023 launch article said 484 bookstores in 48 cities / 24 departments. Preserve as time drift.
- UK/Ireland: BA A-Z path reported 973 bookshops; another generic path observed 970 earlier. BA also reports representing over 95% of bookshops and separately reported 1,063 independent bookshops in BA membership at end-2023. Keep these as different count contexts.
- Germany: genialokal says over 750 participating bookstores. Treat as network participants, not full Germany bookstore census.
- Austria: buchhandel.at says Austria has over 400 bookstores; buecher.at clarifies the platform includes member bookshops, antiquarian booksellers, online shops, and publishers. Keep role classes separate.

## Promotion rule
No rows from this package are full-harvest-backed. The sample rows are visible-source samples only. Promotion to raw-harvest-backed requires raw HTML or export files, parser output, row count, dedupe ledger, and hash manifest from a network-enabled run.

## Files in this checkpoint
- `tranche2_harvest_manifest_2026-04-26.csv`
- `tranche2_source_evidence_ledger_2026-04-26.csv`
- `tranche2_field_map_2026-04-26.csv`
- `tranche2_normalized_sample_rows_NOT_FULL_HARVEST_2026-04-26.csv`
- `run_tranche2_public_page_harvest.py`
- `CURRENT_STATE_SNAPSHOT_2026-04-26_tranche2.json`
- `README_RUN_THIS_FIRST_2026-04-26.md`
- `artifact_manifest_2026-04-26.csv`
