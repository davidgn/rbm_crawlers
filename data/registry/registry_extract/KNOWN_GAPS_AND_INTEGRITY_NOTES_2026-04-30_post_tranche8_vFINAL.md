# Known gaps and integrity notes — 2026-04-30_post_tranche8_vFINAL

## Hard gaps

- No raw full harvest exists yet for any source in this runtime.
- Full row counts for Mexico, France, Chile, Spain TTL, Poland OBK, and other targets remain unverified until network-enabled raw execution succeeds.
- Some samples were hand-normalized or web-observed and explicitly labeled NOT FULL HARVEST. They are examples only.

## Network/runtime gap

The local runtime could create files and run scripts, but direct external host resolution/download was blocked or hung. This created probe-backed packages, not raw harvest packages.

## Count caveats preserved

- Mexico SIC: page/state counts and resource-summary counts did not perfectly agree in earlier probe notes; preserve discrepancy until raw endpoint is downloaded and counted.
- Spain TTL: inferred listing count from pagination must be verified by crawl.
- Poland OBK: dated report count and live homepage counter differed; preserve both.
- Colombia Camlibro: current directory and launch article counts differed; preserve as count drift.
- Canada CIBA: static March 2025 roster count is not a live global directory count.
- Ukraine UBI: map-registered count and aggregate market estimate are separate.
- France data.gouv: official but explicitly not exhaustive.

## Source-scope traps

- MENA Tranche 8 is mostly publisher/distributor association infrastructure, not bookstore registry data.
- Qatar QNL is a library directory, not bookstore data.
- Lebanon AtLebanon “Books In Lebanon” was a dead/no-result seam for this purpose.
- Saudi private “Book Stores” directory was contaminated and manually downgraded.
- Morocco GoAfrica is a fallback private directory only.
- ALAI/ILAB, Kosho, and similar antiquarian sources are overlays, not general new-book bookstore registries.

## Transcript limitation

The included transcript is a reconstructed visible transcript from the conversation context and artifacts. It does not include hidden reasoning/tool internals.
