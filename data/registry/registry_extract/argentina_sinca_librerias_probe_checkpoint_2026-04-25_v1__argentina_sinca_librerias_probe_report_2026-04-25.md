# Argentina SInCA / Datos Argentina — Librerías probe checkpoint (2026-04-25)

## Status

This pass converted the Argentina SInCA / Datos Argentina bookstore surface from a manifest row into a governed metadata-backed harvest probe.

**Durable status:** metadata probe complete; raw CSV download unresolved in this runtime.

The source is still harvest-grade: Datos Argentina exposes the **Librerías** resource under **Mapa Cultural: Espacios Culturales**, and the resource definition is bookstore-specific: establishments whose activity includes retail sale of new and/or used books.

## Source identity

- Dataset: Mapa Cultural: Espacios Culturales
- Resource title: Librerías
- Dataset ID: `37305de4-3cce-4d4b-9d9a-fec3ca61d09f`
- Resource ID: `ee6ec36e-e4f2-42a0-adb8-525f0cb93c87`
- Datos Argentina resource page: https://datos.gob.ar/dataset/cultura-mapa-cultural-espacios-culturales/archivo/cultura_ee6ec36e-e4f2-42a0-adb8-525f0cb93c87
- Origin portal resource page: https://datos.cultura.gob.ar/dataset/espacios-culturales-argentina-sinca/archivo/ee6ec36e-e4f2-42a0-adb8-525f0cb93c87
- Direct CSV URL: https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/ee6ec36e-e4f2-42a0-adb8-525f0cb93c87/download/libreria.csv
- Format observed on origin page: `text/csv`
- Update frequency: annual
- Created: 2021-12-02
- Last changed: 2022-05-03

## Harvest judgment

Classify as `registry-grade_official_open_data_stale_sensitive`.

Why:

1. It is an official/open-data national cultural infrastructure source.
2. It is not merely a chamber membership list; the schema contains geocoded location, administrative geography, contact, web/social, source, management, and update-year fields.
3. The source definition explicitly includes retail sale of **new and/or used books**, making it relevant for both bookstore registry and used/antiquarian overlay work.
4. It is stale-sensitive: the resource page shows last change in 2022, so do not treat rows as verified-current without spot checks.

## Runtime limitation

The direct CSV URL was identified, but the current runtime could not persist the raw file:

- Web tool opened the resource metadata page, but direct CSV fetch returned a tool-level failure: `(400) OK`.
- The origin page's data explorer says the resource view is unavailable.
- Local container network/DNS failed on `datos.cultura.gob.ar`.

Therefore this checkpoint does **not** claim a row count or live normalized row file. It includes the field map, evidence ledger, normalized empty schema, and a ready-to-run harvester that should produce raw + normalized files in a networked runtime.

## Required next validation after raw CSV fetch

1. Compute exact row count.
2. Compute distribution by `provincia_nombre`.
3. Compute distribution by `actualizacion`.
4. Count rows with latitude/longitude present vs missing/null-like.
5. Count rows with email and web/social populated.
6. Preserve `categoria`, `fuente`, `tipo_gestion`, and `actualizacion` exactly.
7. Build spot-check queue for old `actualizacion` years and for high-value metro rows.
8. Do not mark all rows active/current solely from inclusion in the CSV.

## Output files in this checkpoint

- `argentina_sinca_librerias_field_map_2026-04-25.csv`
- `argentina_sinca_librerias_source_evidence_ledger_2026-04-25.csv`
- `argentina_sinca_librerias_normalized_schema_empty_2026-04-25.csv`
- `argentina_sinca_librerias_probe_summary_2026-04-25.json`
- `argentina_sinca_librerias_harvester_2026-04-25.py`
- `bookstore_registry_harvest_manifest_tranche1_2026-04-25_argentina_probe_update.csv`
- `argentina_sinca_probe_artifact_manifest_2026-04-25.csv`
