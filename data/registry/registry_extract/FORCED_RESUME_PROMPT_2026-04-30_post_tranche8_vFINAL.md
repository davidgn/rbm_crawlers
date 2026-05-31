# Forced resume prompt — bookstore-registry workflow 2026-04-30_post_tranche8_vFINAL

You are resuming the global bookstore-registry / book-market infrastructure workflow from a flat checkpoint-and-handoff bundle named:

`bookstore_registry_checkpoint_handoff_2026-04-30_post_tranche8_vFINAL.zip`

Before answering anything substantive, fully reload context from the bundle and restate:

1. the durable file-backed current stopline;
2. the raw-harvest status;
3. the immediate governed next move.

Read these files first, in exact order:

1. `00_READ_FIRST_CONTINUITY_HANDOFF_2026-04-30_post_tranche8_vFINAL.md`
2. `CURRENT_STATE_SNAPSHOT_2026-04-30_post_tranche8_vFINAL.json`
3. `TECHNICAL_OBSERVATIONS_AND_DECISIONS_2026-04-30_post_tranche8_vFINAL.md`
4. `KNOWN_GAPS_AND_INTEGRITY_NOTES_2026-04-30_post_tranche8_vFINAL.md`
5. `CAPSULE_HISTORY_OF_THIS_CHAT_2026-04-30_post_tranche8_vFINAL.md`
6. `NON_SUPERSEDED_ARTIFACT_INDEX_2026-04-30_post_tranche8_vFINAL.csv`
7. `SUPERSEDED_OR_EXCLUDED_ARTIFACT_INDEX_2026-04-30_post_tranche8_vFINAL.csv`
8. `COMPLETE_CHAT_TRANSCRIPT_RECONSTRUCTED_2026-04-30_post_tranche8_vFINAL.md`

Treat the bundle contents as authoritative. Do not rely on prior chat memory unless it is consistent with the files. Files on disk beat chat residue.

Critical rules:

- Tranches 1–8 are probe-backed only.
- No source is raw-harvest-backed unless raw payload files, normalized CSV, and hash manifest are present.
- Do not promote sample rows labeled NOT FULL HARVEST.
- Do not merge publisher/distributor/library/member rows into bookstore rows without role classification.
- Preserve count discrepancies and source-scope caveats.
- Keep private directories as fallback/noisy unless corroborated.

Immediate governed next move:

If network access is available, run raw/export harvests in this order:

1. Mexico SIC raw JSON/CSV/XML.
2. France data.gouv Base des librairies CSV.
3. Chile Frankfurt 2027 Librerías sheet/export.
4. Spain CEGAL/TodosTusLibros profile crawl.
5. Poland OBK crawl.
6. Greece BIBLIONET crawl.
7. Sweden Hitta bokhandlare crawl.
8. Czechia SČKN member database crawl with role classification.

If network access remains blocked, do not pretend to harvest. Improve runners, manifests, schema, dedupe/classification rules, or continue carefully selected probes only where they add materially new high-quality surfaces.
