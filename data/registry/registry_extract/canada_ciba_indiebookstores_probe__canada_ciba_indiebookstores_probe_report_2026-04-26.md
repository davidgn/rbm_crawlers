# Canada CIBA / IndieBookstores.ca bookstore directory probe — 2026-04-26

## Governed classification

**Source:** Canadian Independent Booksellers Association (CIBA) / IndieBookstores.ca  
**Governed classification:** `member-grade / network-grade`, with IndieBookstores.ca as a CIBA-owned consumer locator, profile, and availability overlay.  
**Probe status:** `static_roster_profile_probe_complete_rendered_endpoint_harvest_needed`.

This is not an open-data government registry like Mexico SIC. It is an authoritative independent-bookseller association and a public consumer-facing locator/profile network. It is highly useful, but rows need member/profile staging and entity-role classification before promotion.

## Authority and source relationship

CIBA's member-directory page states that the directory includes all CIBA Bookseller Members in good standing and that the information is based on what booksellers provide to CIBA when they join. The static no-JavaScript view confirms the directory semantics but not row output, so full use of that surface requires JavaScript rendering or endpoint discovery.

CIBA's Bookseller Member eligibility page says Bookseller Members are privately held Canadian-owned independent bookstores, including traditional, pop-up, and mobile bookstores, with one to ten locations selling new books. It also says secondhand bookstores and specialty stores are eligible if they sell some new books on an ongoing basis. This is central for classification: not every member is a standard street-front general bookstore.

IndieBookstores.ca says it was established in 2023 by CIBA and is owned by CIBA. It is not itself an online shop; it helps readers find stores, map/directory results, stock, shipping policies, and redirects users to store websites.

## Public surfaces confirmed

1. **CIBA member directory landing**  
   URL: https://cibabooks.ca/member-directory  
   Observed capabilities: all CIBA Bookseller Members in good standing; information supplied by booksellers; search by city/town, province/territory, specialty, and more; JavaScript required for rendered rows.

2. **CIBA Bookseller Member eligibility**  
   URL: https://cibabooks.ca/Canadian-Independent-Booksellers  
   Observed governance fields: privately held Canadian-owned independent bookstore; traditional/pop-up/mobile; one to ten locations; selling new books; secondhand/specialty eligibility if ongoing new-book sales.

3. **IndieBookstores.ca bookstore finder**  
   URL: https://www.indiebookstores.ca/bookstores/  
   Observed fields: province filter; service/amenity filter; listing cards; store names; addresses; profile links; services/amenity icons.

4. **IndieBookstores.ca store profiles**  
   Sample Queen Books URL: https://www.indiebookstores.ca/locations/queen-books/  
   Observed fields: name, location intro, external website, Google directions link, full address, phone, website, events URL, social media area, amenities, and nearby stores.

   Sample Wandering Griffin URL: https://www.indiebookstores.ca/locations/the-wandering-griffin-bookhouse-shoppe/  
   Observed fields: name, location intro, external website, Google directions link, full address, website, social media area. Phone was absent in observed text, so phone should be nullable.

5. **CIBA Member Bookstores static roster on IndieBookstores.ca**  
   URL: https://www.indiebookstores.ca/ciba-members/  
   The page says the list represents CIBA Bookseller Members as of March 2025. This checkpoint includes a province-count ledger for a visible counted roster of **208 entries** across **11 provinces/territories**. Treat this as a dated roster checkpoint, not as a live full-directory export.

## Count governance

Known observed count signals:

- CIBA static member roster visible count: **208 entries** across **11 provinces/territories**, list date March 2025.
- TBL/IndieBookstores wording: CIBA represents “more than 200 Canadian booksellers and their staff”; this is not a clean store-location count.
- IndieBookstores.ca finder exposes live listing/profile surfaces but no clean global count was observed in this probe.
- External launch coverage says IndieBookstores.ca includes independent bookstores across Canada, and CIBA member stores have more detailed entries; use as context, not row authority.

## Extraction posture

Recommended full harvest path:

1. Run rendered/endpoint probe for `cibabooks.ca/member-directory`, because the no-JS view confirms directory semantics but not rows.
2. Preserve the March 2025 static CIBA roster as a dated name/city/province checkpoint.
3. Crawl IndieBookstores.ca `/bookstores/` with Load More/filter endpoint discovery or a rendered browser.
4. Follow `/locations/<slug>/` profile links and extract name, address, postal code, phone, website, events URL, amenities, social links where present, and nearby-store graph.
5. Dedupe by normalized name + address + postal code + website + phone; then compare to the March 2025 CIBA roster.
6. Classify `entity_role_primary` before promotion:
   - `bookstore_location`
   - `chain_branch`
   - `mobile_pop_up_bookstore`
   - `specialty_comics_or_non_general_bookstore`
   - `specialty_store_with_books`
   - `online_only_or_no_public_storefront`
   - `review_needed`

## Runtime limitation

This runtime cannot resolve or directly crawl `cibabooks.ca` / `indiebookstores.ca` from the local container. This checkpoint therefore provides source classification, field map, evidence ledger, dated roster count ledger from visible web evidence, normalized sample, and a ready-to-run harvester script, but does not claim a full CIBA/IndieBookstores live export.

## Files in this checkpoint

- `canada_ciba_indiebookstores_source_evidence_ledger_2026-04-26.csv`
- `canada_ciba_indiebookstores_field_map_2026-04-26.csv`
- `canada_ciba_indiebookstores_normalized_sample_2026-04-26.csv`
- `canada_ciba_member_roster_visible_samples_2026-04-26.csv`
- `canada_ciba_member_roster_province_counts_2026-04-26.csv`
- `canada_ciba_indiebookstores_probe_summary_2026-04-26.json`
- `canada_ciba_indiebookstores_harvester_2026-04-26.py`
- `bookstore_registry_harvest_manifest_tranche1_2026-04-26_canada_probe_update.csv`
- `canada_ciba_indiebookstores_probe_artifact_manifest_2026-04-26.csv`
