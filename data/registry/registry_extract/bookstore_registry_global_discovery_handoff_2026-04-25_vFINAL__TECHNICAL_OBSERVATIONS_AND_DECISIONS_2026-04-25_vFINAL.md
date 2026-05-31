# Technical Observations and Decisions — 2026-04-25 vFINAL

## 1. Source taxonomy
Use these source classes consistently:

- **registry-grade**: official or quasi-official national/regional bookstore table or map suitable for direct harvesting.
- **network-grade**: commercial/institutional bookstore network with store search and/or inventory exposure.
- **member-grade**: association/chamber member list, often mixed-role and incomplete.
- **publisher-sales-point**: publisher/distributor pages listing booksellers/sales points; often very useful in Africa, Caribbean, and small markets.
- **chain-locator**: official branch/store pages for a bookstore chain.
- **private-directory**: commercial yellow-pages/business-directory category pages.
- **francophone-backbone**: AILF/CNL/Francophone libraire lists; high quality but non-exhaustive.
- **church/campus bookstore network**: Adventist Book Centre, university bookstore, schoolbook supplier, etc.
- **used-antiquarian overlay**: ABAA, ANZAAB, ALAI, 日本の古本屋, etc.; never merge silently into general new-book retail.
- **pickup-logistics-only**: pickup points or lockers; not bookstores unless independently verified.
- **anchor-only**: individual live store(s), no registry/directory surface.
- **historic-closed**: preserve historical market information but exclude from live registry unless reverified.

## 2. Entity typing decisions
Every row in a future harvested registry should support at minimum:
- country_or_territory
- region_or_city
- source_name
- source_url
- source_class
- entity_name
- entity_role_primary
- role_flags: bookstore, chain_branch, used_antiquarian, publisher, distributor, schoolbook_supplier, stationery_hybrid, religious_bookstore, campus_bookstore, online_only, pickup_point, historic_closed
- address fields
- phone/email/website/social fields
- geocoordinates when available
- last_seen_date
- status_note
- confidence

## 3. Region-specific decisions

### LATAM / Ibero-America
CERLALC is the Ibero-American backbone and should be harvested early, not used only as fallback. Mexico, Argentina, Colombia, Panama, Costa Rica, Guatemala, Chile, Paraguay, and Spain have especially strong registry/scrape surfaces.

### Europe
Europe is a patchwork of association directories, commerce networks, official labels, and language-region splits. Spain and Poland are benchmark registry cases. France/Belgium/Switzerland need language/community splitting and dedupe. UK/Ireland has strong BA/Bookshop/Hive/ABA overlays.

### MENA
Usually not registry-grade. Chain locators, publisher-union directories, book-fair exhibitors, and francophone networks are the main lanes. Conflict-fragile countries require last-seen tracking.

### Africa
Publisher/distributor sales-point pages are often the most harvestable source type. Strong examples include Zimbabwe College Press, Botswana Macmillan, Eswatini Macmillan, and Ghana GBDC. AILF is the best francophone backbone.

### Asia
South Asia is platform/chain heavy. East Asia has strong official/network surfaces in Japan, Taiwan, and South Korea but China requires provincial/chain/platform reconstruction. Southeast Asia is chain/platform-first.

### Oceania/Pacific
Australia/NZ are registry/network-grade. Pacific islands are mostly church bookstore, campus bookstore, private directory, and anchor-only lanes.

### U.S./Canada/Caribbean
U.S. and Canada are top-tier registry/network cases. Caribbean is closer to Pacific microstate logic: publisher sales-point lists and local directories beat national registries.

## 4. Integrity decisions
- Do not count every named source as a live bookstore without validation.
- Treat counts reported by sources as contextual until scraped.
- Retain contradictory counts/claims with source and date.
- Preserve closure reports and political-status notes.
- Keep used/antiquarian overlays separate but linkable.
- Keep pickup/logistics points out of bookstore counts unless independently verified.
