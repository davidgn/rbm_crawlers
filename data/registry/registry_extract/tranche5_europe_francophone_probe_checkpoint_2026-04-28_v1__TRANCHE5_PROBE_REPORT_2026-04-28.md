# Tranche 5 Europe / Francophone probe — 2026-04-28

## Stopline
Tranches 1–5 are probe-backed. No source has been promoted to raw-harvest-backed in this runtime because local network/DNS execution has remained unreliable. This tranche adds five source lanes and one especially strong new official open-data target: France's `Base des librairies en France`.

## Source classifications

### France — Base des librairies en France
Classification: registry-grade / official open-data.

This is the strongest Tranche 5 seam. The public dataset describes an official effort to know the geographic and specialty distribution of bookstores in France, specifies partner bodies, defines the included bookstore concept, marks the base as non-exhaustive, and exposes one CSV file updated April 20, 2026. Treat this as an official low-estimate floor, not the total French bookstore universe.

### Belgium / Flanders — Boekhandels Vlaanderen
Classification: network-grade / regional industry directory.

Static HTML exposes rows under “Alle boekhandels,” with category filters for regions, Fnac, Standaard Boekhandel, and independent bookstores. Harvest everything into staging, then classify independent vs chain branch.

### Switzerland — Buchzentrum + BuchBon
Classification: network-grade / voucher-overlay / industry-commerce directory.

Buchzentrum exposes a paginated Swiss bookstore directory with store rows, addresses, phones, hours, and hex-obfuscated emails. BuchBon exposes a voucher-acceptance directory claiming more than 400 participating Swiss bookstores plus 60 online shops. These should be reconciled, not collapsed.

### Netherlands — Libris / Blz.
Classification: network-grade / hybrid store-locator.

Useful as a commerce/store network overlay. The network includes independent bookstores and office-supply shops; classification is mandatory before bookstore-only promotion.

### Portugal — ReLI + APEL + DGLAB
Classification: split surface. ReLI is a strict independent-bookstore network; APEL is mixed association/member-grade; DGLAB is an official bookstore-search seam requiring endpoint/form probe.

## Immediate next executable target
France should be queued immediately after Mexico/Chile for raw network execution because it has a dated official CSV endpoint and a clear non-exhaustive scope statement.
