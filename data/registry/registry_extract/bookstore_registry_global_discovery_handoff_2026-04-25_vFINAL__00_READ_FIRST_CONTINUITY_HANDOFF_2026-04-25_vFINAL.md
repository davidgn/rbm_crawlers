# 00 READ FIRST — Bookstore Registry Global Discovery Handoff — 2026-04-25 vFINAL

## Purpose
This bundle checkpoints the global bookstore-registry / book-market infrastructure discovery workflow begun from the LATAM Camlibro question and expanded region by region across the world.

## Binding continuity rules
1. Treat this bundle as the startup surface for the next chat.
2. Read the files in this order:
   - `00_READ_FIRST_CONTINUITY_HANDOFF_2026-04-25_vFINAL.md`
   - `CURRENT_STATE_SNAPSHOT_2026-04-25_vFINAL.json`
   - `TECHNICAL_OBSERVATIONS_AND_DECISIONS_2026-04-25_vFINAL.md`
   - `CAPSULE_HISTORY_OF_CHAT_2026-04-25_vFINAL.md`
   - `GLOBAL_SOURCE_CLASS_MATRIX_2026-04-25_vFINAL.csv`
   - `REGIONAL_HARVEST_QUEUE_2026-04-25_vFINAL.csv`
   - `KNOWN_GAPS_AND_INTEGRITY_NOTES_2026-04-25_vFINAL.md`
   - `CHAT_TRANSCRIPT_RECONSTRUCTED_2026-04-25_vFINAL.md`
3. Do not treat every directory as a true bookstore registry. Preserve source class and role typing.
4. Separate live bookstore rows from publisher/distributor sales points, pickup/logistics points, schoolbook/stationery hybrids, religious/church bookstore networks, campus bookstores, used/antiquarian overlays, anchor-only rows, and historic/closed rows.
5. Maintain last-seen/date/status notes, especially for politically fragile or closure-sensitive markets.

## Durable state at handoff
The workflow has completed broad discovery passes across:
- LATAM and Caribbean seed registries
- Iberia, France/Benelux/Switzerland, DACH/Nordics, UK/Ireland, Southern/Central/Eastern Europe, Balkans/Caucasus/Turkey
- MENA and North Africa
- Sub-Saharan Africa, Horn, Indian Ocean, Lusophone Africa, Southern Africa cleanup
- South Asia
- East Asia
- Southeast Asia
- Oceania/Pacific
- U.S./Canada/Caribbean cleanup

## Immediate next move
Shift from discovery to harvest planning. Build executable harvest manifests starting with Tier 1 direct/registry-grade sources, then Tier 2 structured scrapes, then reconstruction lanes.

Recommended first harvest tranche:
1. Mexico SIC
2. Argentina SInCA / datos.gob.ar
3. Spain CEGAL / Todos tus libros
4. Poland OBK
5. South Africa SA Booksellers
6. United States ABA / IndieBound
7. Canada CIBA / IndieBookstores.ca
8. Australia BookPeople / Find a BookShop
9. New Zealand Booksellers Aotearoa / BookHub
10. Japan national bookstore guide + used/antiquarian overlay

## Key warning
This was a discovery and triage chat, not a completed scrape. Some source counts and page states are time-sensitive and must be rechecked before automated harvesting.
