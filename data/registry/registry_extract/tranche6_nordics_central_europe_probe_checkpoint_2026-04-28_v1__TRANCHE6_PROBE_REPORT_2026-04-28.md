# Tranche 6 probe report — Nordics / Central Europe — 2026-04-28

## Scope

This tranche covers Denmark, Norway, Sweden, Finland, Czechia, and Slovenia. It extends the bookstore-registry discovery lane beyond LATAM, Western Europe, and the earlier national/member surfaces.

## Durable status

All six entries are **probe-backed only**. No source is promoted to raw-harvest-backed.

## Country notes

### Denmark

Primary authority is Boghandlerforeningen, the Danish booksellers trade association. The current site confirms sector/association role and membership logic via bookshop number, but a current public member/location directory was not confirmed. Bogbrancheguiden gives a sector-level count claim of **godt 200 boghandler i Danmark** and points to a "Find boghandler" seam. Bog & idé is a useful chain-locator overlay, not a national registry.

Governance: keep Denmark as **association-anchor + chain-locator/private-directory fallback** until a live public member directory or reliable national list is confirmed.

### Norway

Bokhandlerforeningen is the official sector anchor and describes itself as the interest organization for all Norwegian bookstores. The statutes define member types broadly: main bookstore, branch, online bookseller, textbook branch, or niche bookstore. The site also exposes a public online-bookseller member list.

Governance: use the association as taxonomy/count-context authority; do not infer a physical-store roster from the online-member page.

### Sweden

Svenska Bokhandlareföreningen exposes a public **Hitta bokhandlare** directory. Visible rows include bookstore names and addresses, and the page has a city search field. This is a strong public member/network directory.

Governance: prioritize Sweden for network-enabled crawl. Stage all rows and classify bookstore vs paper/office hybrid where necessary.

### Finland

Kirjakauppaliitto is the Finnish book/paper-shop association. Its official count page gives year/category counts and a definition. For 2026, the page reports:
- Yleiskirjakauppa: 122
- Market/tavaratalo: 167
- Erikoiskirjakauppa: 32

Governance: use as a count-control/statistical surface. Do not invent row-level entities from aggregate counts.

### Czechia

SČKN exposes a public member database with company name, city, street/address, contact person, and detail links. However, SČKN is mixed-role: publishers, booksellers, distributors, and related entities.

Governance: high-value public member crawl, but role classification is mandatory before bookstore promotion.

### Slovenia

JAK RS's "Vrnitev napisanih" archive says about 80 Slovenian bookstores joined a campaign and that a complete list appears below. This is official but campaign-specific/stale. Bralnica provides a private bookstore directory that can supplement but not override official evidence.

Governance: stage Slovenia as dated/campaign roster plus private-directory fallback; do not call it a live registry.

## Recommended next step

Run the network-enabled Tranche 6 runner, then promote only sources with persisted raw HTML/CSV + hash manifests. Sweden and Czechia are the cleanest row-level candidates; Finland is best as a count-control layer.
