# Bookstore registry executable harvest attempt — 2026-04-26 v1

## Stopline

This package advances the workflow from probe/checkpoint mode into executable harvest mode for the first queue:

1. Mexico SIC raw JSON/CSV/XML + normalization
2. Australia BookPeople / Love Your Bookshop profile crawl smoke pass
3. New Zealand Booksellers Aotearoa / BookHub profile crawl smoke pass
4. Japan Kosho / 日本の古本屋 shop-profile smoke pass

## Runtime result

The local container runtime could not resolve external hosts. The attempt is therefore preserved as a file-backed execution failure/empty-output checkpoint, not a completed live harvest.

The web tool separately verified that the Mexico SIC JSON endpoint is live and exposes bookstore records with fields including `libreria_id`, `libreria_nombre`, address, phone, website, email, coordinates, state/municipality/locality names, `link_sic`, `fecha_mod`, and `libreria_ce`. The local Python/curl runtime, however, could not resolve `sic.cultura.gob.mx` and therefore could not persist the raw JSON/CSV/XML exports.

## Key diagnostic evidence

- `network_diagnostics_2026-04-26.txt` records failed DNS lookups for `sic.cultura.gob.mx`, `loveyourbookshop.org.au`, `www.booksellers.co.nz`, and `www.kosho.or.jp`.
- `runs/<timestamp>/first_executable_harvest_queue_results.csv` records per-job exit status, row counts, and stdout/stderr log paths.
- `runs/<timestamp>/mexico_sic/download_manifest.csv` records explicit failed downloads for the Mexico raw JSON, CSV, XML, and metadata XLSX URLs.

## Governance interpretation

- Mexico remains the first true executable target because it exposes a direct open-data endpoint.
- Australia, New Zealand, and Japan remain crawl targets, not bulk-export targets.
- The empty/failed outputs must not be promoted as harvested country ledgers.
- In a normal networked runtime, run `python3 run_first_executable_harvest_queue_selfcontained.py` from this package root.

## Immediate next move

Run the self-contained queue in a network-enabled shell. If Mexico succeeds, promote Mexico SIC to `raw-backed / normalized-backed` and only then continue to Australia profile crawl. If Mexico still fails in a network-enabled shell, try SIC via browser-export/manual downloaded JSON before spending more effort on crawl surfaces.
