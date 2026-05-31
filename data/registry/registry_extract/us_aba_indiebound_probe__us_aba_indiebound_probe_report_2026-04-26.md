# U.S. ABA / IndieBound bookstore directory probe — 2026-04-26

## Governed classification

**Source:** American Booksellers Association BookWeb / IndieBound  
**Governed classification:** `member-grade / network-grade`, with IndieBound as a consumer locator overlay.  
**Probe status:** `static_query_probe_complete_query_matrix_harvest_needed`.

This is not an open-data registry like Mexico SIC. It is an authoritative association-member directory plus a public locator overlay. The public surfaces are harvestable, but full extraction must be query-matrix driven and deduplicated.

## Authority and source relationship

ABA's About page describes ABA as a national trade association supporting independent bookstores and states it supports over 3,200 independent bookstores. The BookWeb member directory page identifies the ABA Bookseller Member Directory as a searchable directory of bookseller members. A BookWeb IndieBound page states ABA members appear on the IndieBound store locator.

**Governance rule:** treat ABA BookWeb as the primary source and IndieBound as an overlay/locator. Do not merge them blindly.

## Public surfaces confirmed

1. **ABA Bookseller Member Directory landing**  
   URL: https://www.bookweb.org/member_directory/search/ABAmember  
   Observed fields: Bookstore or Company Name; City; State; Zip code. The page recommends city search for best results.

2. **ABA static result pages**  
   Example Chicago URL: https://www.bookweb.org/member_directory/search/ABAmember/results/0/Chicago/IL/0  
   Observed count: `Search fetched 55 results` for Chicago, IL.  
   Observed row fields: linked store name, external website, street/city/state/zip, phone, descriptive text.

   Example name-token URL: https://www.bookweb.org/member_directory/search/abamember/results/0/0/o  
   Observed count: `Search fetched 429 results` for a query-token route.  
   This is query-specific and not a global count.

3. **IndieBound Indie Bookstore Finder**  
   URL: https://www.indiebound.org/indie-store-finder  
   Supports search by ZIP Code, City, or Address and optional ownership identity filters. The page notes identity-search results include only ABA member stores that elected to share ownership identity publicly.

4. **IndieBound geocoding behavior**  
   URL: https://www.indiebound.org/faq/general  
   FAQ says the ZIP locator uses Google APIs to geocode store and query addresses and calculates closest stores.

## Extraction posture

Recommended full harvest path:

1. Crawl ABA result pages by state/province/territory and city where possible.
2. Probe alphabet/name-token routes, but treat them as supplementary because token result counts are not global counts.
3. Parse result row blocks into staging rows.
4. Normalize fields and dedupe by name + address + postal code + website + phone.
5. Classify `entity_role_primary` before promotion:
   - `bookstore_location`
   - `chain_branch`
   - `airport_branch`
   - `online_only_bookstore`
   - `mobile_pop_up_bookstore`
   - `planned_bookstore`
   - `specialty_comics_or_non_general_bookstore`
   - `review_needed`
6. Use IndieBound as a locator/identity/geocoding overlay only. Absence of an identity flag should be coded as `unknown`, not `false`.

## Count governance

Known observed count signals:

- ABA About page: over 3,200 independent bookstores supported by ABA.
- ABA Bookshop participation note: over 2,500 ABA stores participating in Bookshop pool and over 2,500 in partnership affiliate pages.
- ABA Chicago IL query: 55 results.
- ABA name-token/letter `o` query: 429 results.

None of these is a clean public-directory global row count.

## Runtime limitation

As with the prior probes, this runtime cannot perform direct full network crawling from the local container. This checkpoint therefore provides source classification, field map, sample normalization, evidence ledger, and a ready-to-run harvester script, but does not claim a full ABA/IndieBound export.

## Files in this checkpoint

- `us_aba_indiebound_source_evidence_ledger_2026-04-26.csv`
- `us_aba_indiebound_field_map_2026-04-26.csv`
- `us_aba_indiebound_normalized_sample_2026-04-26.csv`
- `us_aba_indiebound_probe_summary_2026-04-26.json`
- `us_aba_indiebound_harvester_2026-04-26.py`
- `bookstore_registry_harvest_manifest_tranche1_2026-04-26_us_aba_probe_update.csv`
- `us_aba_indiebound_probe_artifact_manifest_2026-04-26.csv`
