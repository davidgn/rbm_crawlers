# Mexico SIC bookstore-registry probe — 2026-04-25

## Source

Source: **Sistema de Información Cultural (SIC), Secretaría de Cultura — Directorio de librerías y puntos de venta**.

Primary source page: https://sic.cultura.gob.mx/datos.php?table=libreria

Export surfaces identified:

- JSON: https://sic.cultura.gob.mx/opendata/d/0_libreria_directorio.json
- CSV: https://sic.cultura.gob.mx/opendata/d/0_libreria_directorio.csv
- XML: https://sic.cultura.gob.mx/opendata/d/0_libreria_directorio.xml
- Metadata XLSX: https://sic.cultura.gob.mx/opendata/meta/0_libreria_directorio.xlsx
- datos.gob.mx CSV resource mirror/catalog page: https://www.datos.gob.mx/dataset/sistema_informacion_cultural_espacios_culturales/resource/8e91816b-3a65-4643-a867-3a242ac8d527

## Probe result

Status: **registry-grade, harvest-ready, but file download retry still required outside this tool runtime**.

The live SIC source has enough structure to harvest: it exposes JSON/CSV/XML export links and a metadata workbook. The JSON endpoint opened successfully in the web tool and showed the full SIC row structure (`libreria_id`, name, address, phones, website, email, lat/lon, state/municipality/locality ids and names, `link_sic`, `fecha_mod`, and `libreria_ce`).

The local runtime could not persist the raw export because direct downloads failed from the web tool for CSV/XLSX and the local container DNS could not resolve the host. This probe therefore creates the governed manifest, state-count ledger, field map, normalized sample, and a ready-to-run harvester script rather than claiming a full raw-file capture.

## Count reconciliation

Observed count surfaces:

| Surface | Count | Status |
|---|---:|---|
| SIC national page, "Datos Nacionales" | 1,351 | accepted for current probe |
| SIC state-list page, "Librerías por estado" | 1,351 | accepted for current probe |
| Sum of 32 state counts | 1,351 | exact match to state-list page |
| SIC all-resources category count | 1,350 | preserved as source mismatch |
| datos.gob.mx resource catalog | no row count observed; file size 537.4 KiB | older/static portal copy; retry download |

Governed decision: **use 1,351 as the current live SIC count** and preserve the 1,350 category count as a QA discrepancy.

## State-count ledger

See: `mexico_sic_librerias_state_counts_2026-04-25.csv`

Top states by count:

| State | Count |
|---|---:|
| Ciudad de México | 401 |
| Estado de México | 92 |
| Jalisco | 88 |
| Puebla | 72 |
| Veracruz | 67 |
| Nuevo León | 53 |
| Guanajuato | 52 |
| Chihuahua | 45 |
| Baja California | 42 |

## Field map

See: `mexico_sic_librerias_field_map_2026-04-25.csv`

Important preservation decisions:

- Preserve `libreria_id` as `source_record_id`.
- Preserve `link_sic` as the source-record URL.
- Preserve `fecha_mod` as source-modified timestamp / last-seen surrogate, **not** proof of active retail status.
- Preserve `libreria_ce` as raw until its meaning is confirmed.
- Keep postal codes as strings.
- Preserve raw phone/email strings because several fields contain multiple values and extensions.
- Convert `0.00000` coordinates to null in clean output, with a `zero_coordinate` QA flag.
- Treat `1000-01-01` founding dates as sentinel values, not true founding dates.

## Typing and classification rules

Default classification should be `bookstore_or_book_sales_point`, not necessarily independent bookstore.

Suggested role flags:

- `chain_branch`: Sanborns, FCE/Educal, Gandhi, Gonvill, Porrúa, Trillas, San Pablo, etc.
- `institutional_sales_point`: universities, SCJN/Casa de la Cultura Jurídica, INAH/museum shops, public institutions.
- `religious_bookstore`: San Pablo, Catholic/Biblical/religious bookstore names or affiliations.
- `social_profile_as_website`: Facebook or similar used in `pagina_web`.
- `stationery_hybrid`: only if name/affiliation indicates papelería/stationery.
- `blank_name`: empty `libreria_nombre`.
- `zero_coordinate`: coordinates are 0.00000.
- `sentinel_foundation_date`: founding date is `1000-01-01`.

## Next move

Run the included harvester script in a networked environment. It will download JSON, CSV, XML, and metadata XLSX, compute byte sizes and SHA-256 hashes, parse JSON and CSV, compare exact row counts, write raw snapshots, and generate normalized CSV + QA outputs.
