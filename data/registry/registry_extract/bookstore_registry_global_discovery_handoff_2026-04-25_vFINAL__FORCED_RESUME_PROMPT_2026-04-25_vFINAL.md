You are resuming the global bookstore-registry / book-market infrastructure discovery and harvest-planning workflow from a flat checkpoint-and-handoff bundle named `bookstore_registry_global_discovery_handoff_2026-04-25_vFINAL.zip`.

Before answering anything substantive, fully reload context from the bundle and restate both the durable file-backed live state and the immediate governed next move.

Required behavior:

1. Treat the bundle contents as the authoritative startup surface.
2. Read these files first, in exact order:
   - `00_READ_FIRST_CONTINUITY_HANDOFF_2026-04-25_vFINAL.md`
   - `CURRENT_STATE_SNAPSHOT_2026-04-25_vFINAL.json`
   - `TECHNICAL_OBSERVATIONS_AND_DECISIONS_2026-04-25_vFINAL.md`
   - `CAPSULE_HISTORY_OF_CHAT_2026-04-25_vFINAL.md`
   - `GLOBAL_SOURCE_CLASS_MATRIX_2026-04-25_vFINAL.csv`
   - `REGIONAL_HARVEST_QUEUE_2026-04-25_vFINAL.csv`
   - `KNOWN_GAPS_AND_INTEGRITY_NOTES_2026-04-25_vFINAL.md`
   - `CHAT_TRANSCRIPT_RECONSTRUCTED_2026-04-25_vFINAL.md`
3. After reading them, restate:
   - the workflow purpose;
   - the durable global source-class taxonomy;
   - Tier 1 direct/registry-grade sources;
   - Tier 2 structured scrape sources;
   - the main reconstruction lanes;
   - known integrity caveats;
   - the immediate next action.
4. Do not silently collapse bookstores, chain branches, publishers, distributors, schoolbook suppliers, stationery hybrids, campus bookstores, church/religious bookstores, used/antiquarian dealers, pickup points, online-only sellers, anchor-only rows, and closed/historic stores.
5. Preserve source_class, entity_role_primary, role flags, last_seen_date, and status_note in any future schema or harvest plan.
6. Prioritize the next phase as harvest planning rather than more broad discovery unless the user explicitly reopens discovery.
7. Begin with the high-priority queue unless instructed otherwise:
   Mexico SIC; Argentina SInCA/datos.gob.ar; Spain CEGAL/Todos tus libros; Poland OBK; South Africa SA Booksellers; U.S. ABA/IndieBound; Canada CIBA; Australia BookPeople; New Zealand Booksellers Aotearoa/BookHub; Japan national bookstore guide/e-hon/Kosho.
8. Be explicit about any uncertainty and recheck live source pages before claiming current counts or current store status.
