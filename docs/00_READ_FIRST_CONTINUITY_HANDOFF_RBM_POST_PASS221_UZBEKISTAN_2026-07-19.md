# READ FIRST — RBM post-pass221 Uzbekistan handoff (2026-07-19)

## Authoritative stopline

This bundle is the authoritative terminal handoff for the RBM / regional book marketplace after **pass221 Uzbekistan**.

Treat this bundle as the live parent for the next chat. Do **not** resume from older chat residue or older pass ZIPs unless the user explicitly orders a rollback.

## Directly verified row counts

Counts below were verified directly from the CSVs in this bundle:

- Territories: **202**
- Explicit rows (all categories compile): **2263**
- Canonical site registry rows: **2347**
- Revisit queue rows: **221**
- Source rows: **2583**
- Evidence rows: **2142**

Current stopline label: **post_pass221_uzbekistan_terminal_handoff_2026-07-19**.

## Mandatory startup order in a new chat

A new chat should read these first, in order:

1. `00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.md`
2. `CURRENT_STATE_SNAPSHOT_RBM_PASS221_UZBEKISTAN_2026-07-19.json`
3. `ROW_COUNT_VALIDATION_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.txt`
4. `00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.md`
5. `00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS217_TO_PASS221_UZBEKISTAN_2026-07-19.md`
6. `00_READ_FIRST_RESUME_PROMPT_RBM_POST_PASS221_UZBEKISTAN_2026-07-19.md`
7. Inspect the six live CSV surfaces directly before doing any substantive work.

## Live CSV surfaces

- Explicit/all-category rows: `rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Canonical site registry: `rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Revisit queue: `rbm_revisit_queue_post_pass220.csv`
- Sources consulted: `rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Evidence ledger: `rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Territory summaries: `rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv`

## Current strategic state

Pass221 closed the Uzbekistan campaign. We verified that Kytab/Kitob operates as a digital e-library and digital bookstore, not a used-book sale/rental/exchange marketplace, so it remains a weak-fit bookstore category with no promotion. Kitabu.uz is verified active as a community used-book exchange/sale platform with active listings. We synced the registry and compile datasets, resolving all open items for Uzbekistan.

The next governed move should return to the backlog. The next suggested territory is **Cameroon**, then Gabon, Bangladesh, Pakistan, Sri Lanka, UAE, Saudi Arabia, Syria, Iraq, Libya, Palestine, Nigeria, India targeted residue, Kyrgyzstan, Turkmenistan, Azerbaijan, Armenia, Georgia, and Côte d’Ivoire.

## Standing workflow rules

- One country/territory pass at a time.
- Use live source checks.
- Preserve strict/main gates conservatively.
- Keep horizontal marketplaces, social groups, operator stores, bookcrossing, donation, and offline-market texture in their correct lanes.
- Capture ISBNs whenever exposed.
- After each pass, write a flat checkpoint ZIP, with no nested ZIPs.
- Treat file-backed CSVs as authoritative.
