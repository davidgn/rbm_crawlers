# READ FIRST — RBM post-pass231 Libya handoff (formalized 2026-07-21)

## Authoritative stopline

This bundle is the authoritative terminal handoff for the RBM / regional book marketplace after **pass231 Libya**.

The Libya data pass was stamped 2026-07-19 and this formal checkpoint was created on 2026-07-21. Treat this bundle as the live parent for the next governed pass. Do not resume from the older pass230 Iraq bundle except for historical comparison.

## Directly verified row counts

CSV-aware counts were verified directly from the six live surfaces:

- Territories: **202**
- Explicit rows: **2295**
- Canonical site registry rows: **2365**
- Revisit queue rows: **221**
- Source rows: **2603**
- Evidence rows: **2161**

Current stopline label: **post_pass231_libya_terminal_handoff_2026-07-21**.

## Mandatory startup order

1. `00_READ_FIRST_CONTINUITY_HANDOFF_RBM_POST_PASS231_LIBYA_2026-07-21.md`
2. `CURRENT_STATE_SNAPSHOT_RBM_PASS231_LIBYA_2026-07-21.json`
3. `ROW_COUNT_VALIDATION_RBM_POST_PASS231_LIBYA_2026-07-21.txt`
4. `00_READ_FIRST_TECHNICAL_OBSERVATIONS_AND_DECISIONS_RBM_POST_PASS231_LIBYA_2026-07-21.md`
5. `00_READ_FIRST_CAPSULE_HISTORY_RBM_PASS230_TO_PASS231_LIBYA_2026-07-21.md`
6. `00_READ_FIRST_RESUME_PROMPT_RBM_POST_PASS231_LIBYA_2026-07-21.md`
7. Inspect the six live CSV surfaces directly before substantive work.

## Current strategic state

Pass231 added Dar Al-Ruwad and the Tripoli International Library Hay Al-Andalous flagship to the single-store bookstore layer. It preserved the resolved Libya revisit state and the five existing active spiders: `darfergiani_spider.py`, `libya_locanto_spider.py`, `libya_afribaba_spider.py`, `alresalah_bookshop_ly_spider.py`, and `libya_opensooq_spider.py`.

The pass added no strict-main marketplace. Libya remains a bookstore, publisher, social resale, and horizontal-classifieds ecosystem.

## Identity resolution

The duplicate `libya::tripoli_international_library` compile facets were consolidated before checkpoint regeneration. The direct `https://tripolibooks.ly` flagship remains the single canonical bookstore row; the older LANA distribution-partnership page is preserved in the consulted-source ledger. No duplicate Libya canonical key or canonical URL remains.

The next governed territory is **Palestine**, followed by Nigeria, targeted India residue, Kyrgyzstan, Turkmenistan, Azerbaijan, Armenia, Georgia, and Côte d’Ivoire.
