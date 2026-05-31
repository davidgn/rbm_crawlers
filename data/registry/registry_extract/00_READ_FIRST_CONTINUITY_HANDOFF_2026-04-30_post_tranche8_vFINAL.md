# 00 READ FIRST — Continuity handoff for bookstore-registry workflow (2026-04-30_post_tranche8_vFINAL)

This flat bundle is the authoritative startup surface for the next chat. It supersedes the prior in-chat probe/checkpoint ZIP wrappers as packaging, while preserving their non-ZIP contents inside this bundle using flat, prefixed filenames.

## What this bundle contains

- All visible non-ZIP artifacts from the current runtime, flattened into one ZIP root.
- Non-ZIP contents extracted from prior checkpoint ZIP wrappers, also flattened and prefixed by source ZIP name.
- A current-state snapshot, technical observations, known gaps, capsule history, non-superseded artifact index, excluded/superseded index, and a forced resume prompt.
- A reconstructed visible transcript of the current chat lane. Hidden tool calls/system instructions are not part of the user-visible transcript and are not exported as transcript content.

## Current stopline

Tranches 1–8 are **probe-backed**. No source is **raw-harvest-backed** yet because direct network access from the local runtime repeatedly failed/hung at download/crawl stages. The project did still produce file-backed probe packages, evidence ledgers, field maps, sample rows marked NOT FULL HARVEST, and network-enabled runner scripts.

## Do not do these on resume

- Do not claim Mexico, France, Chile, or any other source has a completed raw harvest unless raw export files, normalized CSV, and hashes are physically present.
- Do not merge publisher/distributor/library/member association rows into bookstore entities without role classification.
- Do not treat sample rows as full harvest rows.
- Do not repackage old ZIPs inside new ZIPs.

## Immediate next governed move

If network access is available, run the export/download targets first:

1. Mexico SIC raw JSON/CSV/XML.
2. France data.gouv Base des librairies CSV.
3. Chile Frankfurt 2027 Google Sheet export for Librerías.
4. Then crawl/profile targets: Spain TTL, Poland OBK, Greece BIBLIONET, Sweden, Czechia.

If network access is still blocked, continue probe expansion only if it adds genuinely new high-quality official/member surfaces; otherwise focus on improving runners, schema, dedupe/classification rules, and harvest manifests.
