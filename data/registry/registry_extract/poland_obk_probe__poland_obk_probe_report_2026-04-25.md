# Poland OBK probe report — 2026-04-25

## Decision

**Poland / Ogólnopolska Baza Księgarń (OBK)** is classified as **registry-grade** for the global bookstore-registry workflow. It is a free, public national base for Polish stationary bookstores, built from bookseller submissions and intended to support market monitoring and bookstore discovery.

## Count governance

Do **not** collapse the count signals into a single number yet. The probe preserves four distinct count contexts:

1. **Dated official statistics:** the OBK statistics item dated 2026-03-30 says that at the end of March the base had **1,592 registered locations**, of which **921** were independent bookstores.
2. **Homepage live/stat counter:** the observed homepage counter shows **1,584 księgarnie** and **83 klubokawiarnie**.
3. **Filtered search count:** `search?ng=y` displayed **Razem: 249** for that filtered result set.
4. **Used/assortment-ish filtered count:** `search?o=157` displayed **Razem: 425** and 43 pages for that filtered result set.

The governed interpretation is: **1,592/921 = dated official report; 1,584 = current/live counter to reconcile with a full crawl; 249 and 425 = filtered result counts only.**

## Observed harvest surface

The search/listing pages expose static HTML with:

- filters for club-café status, internet sales, awards/certificates, voivodeship, county, chain name, assortment profile, and bookstore type;
- row-level names, chain/network labels when present, phone numbers, opening hours, obfuscated emails, websites, addresses, postal code/city, voivodeship, map links, image blocks, and awards/certificates;
- pagination and `Razem:` result counts for filtered result sets.

The current probe did not find a public bulk CSV/JSON export. The right next unit is a polite static crawl plus network/API inspection in a runtime where direct requests are available.

## Extraction posture

Recommended first full-harvest routine:

1. Fetch and archive `/`, `/search`, `/search?ng=y`, and known paginated routes such as `/search/{page}?ng=True` and filtered routes such as `/search?o=157`.
2. Inspect forms and hidden fields to identify the unfiltered public result route and filter parameter semantics.
3. Crawl all listing pages for the chosen canonical route.
4. Parse row blocks split by `* * *` or equivalent structural separators.
5. Preserve raw obfuscated emails; only reconstruct in a separate audited step if the substitution rule is deterministic and legally/ethically acceptable.
6. Preserve awards/certificates in a separate repeated field or child table.
7. Reconcile unique rows against the **1,584** live counter and the **1,592/921** dated statistics, without forcing equality.

## Files in this checkpoint

- `poland_obk_field_map_2026-04-25.csv`
- `poland_obk_source_evidence_ledger_2026-04-25.csv`
- `poland_obk_normalized_sample_2026-04-25.csv`
- `poland_obk_probe_summary_2026-04-25.json`
- `poland_obk_harvester_2026-04-25.py`
- `bookstore_registry_harvest_manifest_tranche1_2026-04-25_poland_probe_update.csv`
- `poland_obk_probe_artifact_manifest_2026-04-25.csv`

## Governed next move

Proceed to **South Africa SA Booksellers** in tranche order, unless the user wants to pause and run the OBK full crawler externally first.
