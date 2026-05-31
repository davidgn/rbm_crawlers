# Tranche 4 probe report — LATAM / Brazil, Chile, Peru, Uruguay, Costa Rica

Date: 2026-04-28

## Scope

This checkpoint advances the bookstore-registry discovery-to-harvest workflow through a fourth probe block. It focuses on remaining high-value LATAM/chamber/official surfaces:

1. Brazil — Associação Nacional de Livrarias (ANL)
2. Chile — Camino a Frankfurt 2027 / Ministerio de las Culturas directory
3. Peru — Cámara Peruana del Libro (CPL)
4. Uruguay — Cámara Uruguaya del Libro (CUL)
5. Costa Rica — Cámara Costarricense del Libro (CCL)

## Durable stopline

No tranche 4 source is promoted to raw-harvest-backed. This checkpoint is probe-backed only.

The correct promotion path is:

- fetch or crawl raw source files/pages in a network-enabled runtime;
- save raw HTML/CSV/XLSX/JSON with hashes;
- normalize into staging rows;
- classify entity_role_primary and source_class;
- only then promote bookstore/location rows.

## Source-by-source conclusions

### Brazil — ANL

Classification: member-grade national association, with a controlled national directory adjunct.

The public ANL associates page is crawlable and exposes member display names, external links, address fragments, city/state, and phone values. It includes bookstores but also publishers, distributors, editors, events, and other book-trade entities. Therefore it should be harvested into staging and classified before bookstore-only promotion.

The ANL Anuário Nacional de Livrarias 2023 is stronger conceptually because ANL describes it as an updated catalog of Brazilian bookstores organized by regions, municipalities, and states, with full address/contact mapping. However, access to PDF/Excel appears controlled/paid. Treat it as controlled enrichment, not public bulk data.

Primary URL: https://www.anl.org.br/v1/associados/

### Chile — Frankfurt 2027 / MINCAP directory

Classification: official/quasi-official ecosystem directory export candidate.

The official Frankfurt 2027 editorial-ecosystem page exposes contact-directory download links for editoriales, distribuidoras, and librerías. The clicked link opens a public Google Sheet shell named "Prueba directorio Mincap"; this runtime could not extract row content. This seam should be prioritized in a networked runtime because a successful CSV/XLSX export could immediately produce the Chile bookstore contact surface.

Primary URL: https://frankfurt2027.cultura.gob.cl/ecosistema-editorial/directorio-de-contactos/
Observed Google Sheet: https://docs.google.com/spreadsheets/d/1KOim9Nn70VElqYEEQ7pz7aAmVNPJYKBmFi3TrFVRi6E/edit?usp=sharing

### Peru — CPL

Classification: member-grade official chamber directory.

The CPL public directory is static HTML and large enough to be useful. It exposes member blocks with member names, addresses, representative/cargo/sector/especialidad labels, phone values, and website links. CPL itself has a broad membership scope, including publishers, university publishers, distributors, booksellers, installment book-sales organizations, research/documentation centers, reading-promotion entities, and book clubs. Therefore it is not a bookstore-only registry.

Primary URL: https://cpl.org.pe/directorio-asociados/

### Uruguay — CUL

Classification: member-grade chamber roster with explicit category labels.

CUL’s Socios page is valuable because it explicitly separates Librerías, Editoriales, and Distribuidoras. However, the page also has a General section and category sections, so names can appear more than once. Harvest should be section-aware and deduplicated. Librería-category rows are bookstore/member candidates; Editorial and Distribuidora rows should be preserved as book-trade organization rows.

Primary URL: https://cul.com.uy/socios/

### Costa Rica — CCL

Classification: member-grade active-member roster.

The CCL active-members page is static and exposes member names, contacts, emails, and web/social links. It contains direct bookstore candidates such as DCC/Librería Internacional, Everything Faith Bookstore, El Librero Pandeado, and Librería Lehmann, but also publishers, authors, associations, and editorial services. It is useful for the national ecosystem registry but cannot be treated as a bookstore-only registry without role classification.

Primary URL: https://cclcr.com/asociados/

## Next governed execution order

Recommended network-enabled run order:

1. Chile Frankfurt2027 Google Sheet export/gviz test — likely highest upside if the Librerías tab exports cleanly.
2. Peru CPL static HTML parse — high confidence, large page.
3. Uruguay CUL category-aware parse — small but clean category labels.
4. Brazil ANL public associates parse — useful but mixed-role; optionally add controlled Anuário notes.
5. Costa Rica CCL active-member parse — useful but role filtering is mandatory.

## Files in this checkpoint

- `tranche4_harvest_manifest_2026-04-28.csv`
- `tranche4_source_evidence_ledger_2026-04-28.csv`
- `tranche4_field_map_2026-04-28.csv`
- `tranche4_normalized_sample_rows_NOT_FULL_HARVEST_2026-04-28.csv`
- `run_tranche4_latam_public_page_probe.py`
- `CURRENT_STATE_SNAPSHOT_2026-04-28_tranche4.json`
- `TRANCHE4_PROBE_REPORT_2026-04-28.md`
- `artifact_manifest_2026-04-28.csv`
