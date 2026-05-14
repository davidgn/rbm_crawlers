# READ FIRST — RBM post-pass217 terminal checkpoint handoff (2026-05-14)

## Authoritative stopline

This bundle is the authoritative terminal handoff for the RBM / regional book marketplace workflow after **pass217 Russia final saturation / cleanup**.

Treat this bundle as the live parent for the next chat. Do **not** resume from older chat residue or older pass ZIPs unless the user explicitly orders a rollback.

## Directly verified row counts

Counts below were verified directly from the CSVs in this bundle during terminal packaging:

- Territories: **202**
- Explicit rows: **2254**
- Canonical registry rows: **2239**
- Revisit queue rows: **221**
- Source rows: **2581**
- Evidence rows: **2140**

Current stopline label: **post_pass217_russia_final_saturation_cleanup_terminal_handoff_2026-05-14**.

## Mandatory startup order in a new chat

A new chat should read these first, in order:

1. `00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS217_TERMINAL_HANDOFF_2026-05-14.md`
2. `CURRENT_STATE_SNAPSHOT_RBM_PASS217_RUSSIA_FINAL_SATURATION_CLEANUP_2026-05-06.json`
3. `ROW_COUNT_VALIDATION_RBM_POST_PASS217_TERMINAL_HANDOFF_2026-05-14.txt`
4. `00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS217_TERMINAL_HANDOFF_2026-05-14.md`
5. `00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS193_TO_PASS217_TERMINAL_HANDOFF_2026-05-14.md`
6. `NON_SUPERSEDED_ARTIFACT_INDEX_RBM_POST_PASS217_TERMINAL_HANDOFF_2026-05-14.csv`
7. `SUPERSEDED_OR_EXCLUDED_ARTIFACT_INDEX_RBM_POST_PASS217_TERMINAL_HANDOFF_2026-05-14.csv`
8. `COMPLETE_CHAT_TRANSCRIPT_RBM_PASS193_TO_PASS217_VISIBLE_TERMINAL_HANDOFF_2026-05-14.md`
9. Inspect the six live CSV surfaces directly before doing any substantive work.

## Live CSV surfaces

- Explicit/all-category rows: `rbm_all_categories_verbose_compile_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Canonical site registry: `rbm_canonical_site_registry_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Revisit queue: `rbm_revisit_queue_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Sources consulted: `rbm_sources_consulted_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Evidence ledger: `rbm_runtime_gap_bridge_evidence_2026-05-06_pass217_russia_final_saturation_cleanup.csv`
- Territory summaries: `rbm_territory_summaries_2026-05-06_pass217_russia_final_saturation_cleanup.csv`

## Current strategic state

Pass217 closed the Russia mini-campaign for now. Russia remains a high-value territory but was lowered to **medium / monitoring** because the final pass added only control/depth surfaces and no new strict/main promotion.

The next governed move should return to the post-Russia backlog unless the user reprioritizes. The last explicit suggested next territory was **Uzbekistan**, then Cameroon, Gabon, Bangladesh, Pakistan, Sri Lanka, UAE, Saudi Arabia, Syria, Iraq, Libya, Palestine, Nigeria, India targeted residue, Kyrgyzstan, Turkmenistan, Azerbaijan, Armenia, Georgia, and Côte d’Ivoire.

## Standing workflow rules

- One country/territory pass at a time.
- Use live source checks.
- Preserve strict/main gates conservatively.
- Keep horizontal marketplaces, social groups, operator stores, bookcrossing, donation, and offline-market texture in their correct lanes.
- Capture ISBNs whenever exposed, distinguishing explicit ISBN values from capability-only or absent/unchecked evidence.
- After each pass, write a flat checkpoint ZIP, with no nested ZIPs, including current CSVs, continuity docs, technical decisions, capsule history, validation, hash manifest, and transcript.
- Treat file-backed CSVs as authoritative. Do not promote chat-only claims without writing them into the live surfaces.
