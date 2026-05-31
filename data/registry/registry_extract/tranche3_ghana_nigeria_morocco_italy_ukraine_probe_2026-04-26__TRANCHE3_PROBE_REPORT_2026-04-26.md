# Tranche 3 Probe Report — Ghana / Nigeria / Morocco / Italy / Ukraine

Date: 2026-04-26

## Stopline

This tranche is **probe-backed only**. No source is promoted to raw-harvest-backed in this runtime.

## Ghana — GBDC

Classification: **member-grade / government-council directory**.

The Ghana Book Development Council page has a Directory entry for "List of Book Sellers" and exposes table-style fields: S/N, name, specialisation, postal/location, email/website, and contact number. The visible sequence runs from S/N 1 through 47. Because entries include individuals, publishers, bookshops, and general trade entities, the correct harvest path is static parse -> staged role classification -> promotion only for true bookstore/book-trade rows.

Source: https://www.gbdc.gov.gh/list-booksellers

## Nigeria — Booksellers Association of Nigeria

Classification: **member-grade / association directory**.

BAN's home surface describes a national bookseller/bookstore community and its member page exposes profile blocks with name, description, products/services, address, email, phone, and website. Dedupe is required; "Consolidated Books Limited" appears twice in the observed member page.

Sources:
- https://nigerianbooksellers.org/
- https://nigerianbooksellers.org/members

## Morocco — Librairies du Maroc + GoAfrica fallback

Classification: **network/e-commerce platform plus private-directory fallback**.

Librairies du Maroc is the more book-native source, but the tool could not open it and search evidence suggests terms/harvesting sensitivity. Treat it as permission/terms-review before any scrape. GoAfrica's Morocco Librairie category is a crawlable private-directory fallback with a high reported count, but it is noisy and should not be promoted as national registry authority.

Sources:
- https://www.librairiesdumaroc.ma/magasins.php
- https://www.goafricaonline.com/ma/annuaire/librairie

## Italy — ALI / ALAI

Classification: **member-grade association directory + separate used/antiquarian overlay**.

ALI's public "Librerie" page exposes region/province/city/name filters, sample associated bookstores, and a notice that the full list of member bookstores is still being updated. Sample ALI profiles expose description, services, hours, email, phone, website, and address. ALAI/ILAB is a distinct antiquarian overlay; keep it separate from general-bookseller ALI rows.

Sources:
- https://www.libraitaliani.it/librerie/
- https://www.libraitaliani.it/libreria/libreria-del-toboso/
- https://ilab.org/association/associazione-librai-antiquari-ditalia

## Ukraine — Ukrainian Book Institute

Classification: **registry-grade national institute map/research surface**.

UBI's official site lists an "Interactive map of Ukrainian book ecosystem" and Research 2025 gives aggregate market counts. Interfax reported a June 2024 UBI milestone of 500 bookstores registered on the interactive map. The UBI Research 2025 page reports about 800 brick-and-mortar bookstores and 80 online shops in 2024. These are not the same data surface; the map needs API/network-payload inspection before entity rows are promoted.

Sources:
- https://ubi.org.ua/en/activity/interaktivna-mapa-knizhkovo-ekosistemi
- https://ubi.org.ua/en/activity/doslidzhennya/doslidzhennya-2025
- https://en.interfax.com.ua/news/general/995936.html

## Produced files

- tranche3_harvest_manifest_2026-04-26.csv
- tranche3_source_evidence_ledger_2026-04-26.csv
- tranche3_field_map_2026-04-26.csv
- tranche3_normalized_sample_rows_NOT_FULL_HARVEST_2026-04-26.csv
- CURRENT_STATE_SNAPSHOT_2026-04-26_tranche3.json
- run_tranche3_public_page_probe.py
- artifact_manifest_2026-04-26.csv
