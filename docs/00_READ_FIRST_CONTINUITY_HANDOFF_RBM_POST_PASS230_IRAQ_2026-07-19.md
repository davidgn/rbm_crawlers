# READ FIRST — RBM post-pass230 Iraq handoff (2026-07-19)

## Authoritative stopline

This bundle is the authoritative terminal handoff for the RBM / regional book marketplace after **pass230 Iraq**.

Treat this bundle as the live parent for the next chat. Do **not** resume from older chat residue or older pass ZIPs unless the user explicitly orders a rollback.

## Directly verified row counts

Counts below were verified directly from the CSVs in this bundle:

- Territories: **202**
- Explicit rows (all categories compile): **2294**
- Canonical site registry rows: **2364**
- Revisit queue rows: **221**
- Source rows: **2600**
- Evidence rows: **2159**

Current stopline label: **post_pass230_iraq_terminal_handoff_2026-07-19**.

## Mandatory startup order in a new chat

A new chat should read these first, in order:

1. `00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS230_IRAQ_2026-07-19.md`
2. `CURRENT_STATE_SNAPSHOT_RBM_PASS230_IRAQ_2026-07-19.json`
3. `ROW_COUNT_VALIDATION_RBM_POST_PASS230_IRAQ_2026-07-19.txt`
4. `00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS230_IRAQ_2026-07-19.md`
5. `00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS229_TO_PASS230_IRAQ_2026-07-19.md`
6. `00_READ_FIRST_RESUME_PROMPT_RBM_POST_PASS230_IRAQ_2026-07-19.md`
7. Inspect the six live CSV surfaces directly before doing any substantive work.

## Current strategic state

Pass230 closed the Iraq review. We added `Amazon Book Erbil` and `Haval Bookstore Erbil` to `single-store bookstore layer`, synced pass 220 `Simma` and `Maktabati` entries into compile/summaries, and confirmed resolution of revisit queue entries 98/99 with 9 active spiders built (`mutanabi_spider.py`, `kitabi_iraq_spider.py`, `simma_iq_spider.py`, `maktabatie_iq_spider.py`, `opensooq_iraq_spider.py`, etc.).

The next governed move should be **Libya**, followed by Palestine, Nigeria, India targeted residue, Kyrgyzstan, Turkmenistan, Azerbaijan, Armenia, Georgia, and Côte d’Ivoire.
