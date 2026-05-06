# Generated Residue Manifest - 2026-05-06

This manifest records generated local payloads found during repo audit. Most
paths are intentionally ignored rather than committed as source because they are
bulk crawler outputs, decompiled app artifacts, or transient search/snapshot
products. The crawler cache under `src/cache/` is intentionally trackable so the
raw capture evidence can be committed with the cache-first crawler work.

| Path | Size | File count | Notes |
| --- | ---: | ---: | --- |
| `data/` | 3.3M | 323 | Generated backlog, promotion, and registry extracts. |
| `research/decompiled/` | 1.2G | 92,134 | Decompiled APK/XAPK/Dex research artifacts. |
| `research/retained_qid_A14_repo_search_20260505T021036Z/` | 32K | 9 | Retained-QID repo-search residue. |
| `research/snapshots/` | 44K | 10 | Generated current-state snapshots. |
| `src/cache/` | 345M | 7,254 | Trackable cache-first crawler captures for `kitabain` and `taaze_tw`; largest observed file is about 305K. |

Not ignored by this manifest:

- `src/ai_extractor.py`
- `src/batch_processor.py`
- `src/medad_spider.py`
- `research/scripts/`

Those files are still visible in `git status` because they may be source or
operator tooling rather than generated output.
