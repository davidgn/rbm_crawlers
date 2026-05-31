# Bookstore Registry Global Discovery — Resume State and Tranche 1 Harvest Notes

## Loaded bundle authority
Startup bundle: bookstore_registry_global_discovery_handoff_2026-04-25_vFINAL.zip

Read-order files loaded:
1. 00_READ_FIRST_CONTINUITY_HANDOFF_2026-04-25_vFINAL.md
2. CURRENT_STATE_SNAPSHOT_2026-04-25_vFINAL.json
3. TECHNICAL_OBSERVATIONS_AND_DECISIONS_2026-04-25_vFINAL.md
4. CAPSULE_HISTORY_OF_CHAT_2026-04-25_vFINAL.md
5. GLOBAL_SOURCE_CLASS_MATRIX_2026-04-25_vFINAL.csv
6. REGIONAL_HARVEST_QUEUE_2026-04-25_vFINAL.csv
7. KNOWN_GAPS_AND_INTEGRITY_NOTES_2026-04-25_vFINAL.md
8. CHAT_TRANSCRIPT_RECONSTRUCTED_2026-04-25_vFINAL.md

## Durable file-backed live state
Broad global discovery is complete enough to pivot from discovery to harvest planning. The source matrix covers LATAM, Caribbean, Europe, MENA, Africa, South Asia, East Asia, Southeast Asia, Oceania/Pacific, and U.S./Canada.

The governing taxonomy is: registry-grade, network-grade, member-grade, publisher-sales-point, chain-locator, private-directory, francophone-backbone, church/campus bookstore network, used-antiquarian overlay, pickup-logistics-only, anchor-only, historic-closed.

Minimum future row fields should include country/territory, region/city, source name and URL, source class, entity name, entity_role_primary, role flags, address/contact/web/social/geocoordinates, last_seen_date, status_note, and confidence.

## Immediate governed next move
Build executable harvest manifests starting with the high-priority queue:
Mexico SIC; Argentina SInCA/datos.gob.ar; Spain CEGAL/Todos tus libros; Poland OBK; South Africa SA Booksellers; U.S. ABA/IndieBound; Canada CIBA/IndieBookstores.ca; Australia BookPeople; New Zealand Booksellers Aotearoa/BookHub; Japan national bookstore guide/e-hon/Kosho.

## Tranche 1 output
Created CSV manifest:
bookstore_registry_harvest_manifest_tranche1_2026-04-25.csv

The tranche is not a completed scrape. It is an execution plan with observed source surfaces, extraction approach, schema mapping, role-typing cautions, caveats, and the next probe for each source.

## Integrity constraints carried forward
Do not collapse bookstores, chain branches, publishers, distributors, schoolbook suppliers, stationery hybrids, campus bookstores, church/religious bookstores, used/antiquarian dealers, pickup points, online-only sellers, anchor-only rows, and closed/historic stores.

Preserve contradictory source counts and dates until file-backed row counts are computed. For status-sensitive markets and stale datasets, use last_seen_date/status_note rather than live claims.
