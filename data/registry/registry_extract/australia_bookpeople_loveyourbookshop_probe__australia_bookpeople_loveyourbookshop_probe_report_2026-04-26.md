# Australia BookPeople / Love Your Bookshop probe report — 2026-04-26

## Governed classification

**Source:** Australian Booksellers Association / BookPeople and Love Your Bookshop Find a Bookshop.

**Classification:** `member-grade / network-grade`, with a high-quality crawlable public store-profile layer. It is not a statutory/open-data registry and no public bulk CSV/API was confirmed in this probe.

## Live evidence captured

- The Love Your Bookshop About page identifies the Australian Booksellers Association (ABA) as the national industry body supporting bookshops across Australia, with more than 100 years of representation and members ranging from independent/family-owned stores to larger retail businesses.
- The `/find-a-bookshop/` page exposes a public finder surface and category filters: all member shops, stores accepting ABA Book Gift Cards, guide stockists, antiquarian/secondhand, children's specialists, education/technical/professional, generalist bookshops, religion/theology, other specialist shops, and online-only stores.
- Store-profile pages under `/store/<slug>/` expose harvestable profile data: title/name, description, stockist badges, gift-card/voucher status, website, address when physical, email, phone, and website.
- The ABA membership application surface confirms member taxonomy and directory governance fields, including membership subtype, store category, permission to appear in the Find a Bookshop directory, directory search category, bio, and image.

## Sample rows / role-classification lessons

1. `Pictures and Pages` shows a standard physical bookstore profile with address, email, phone, website, guide-stockist flags, and voucher/gift-card flags.
2. `Lamdha books` explicitly shows `Online only` and describes secondhand/antiquarian books, so it should be staged as `online_only_bookstore` with `used_antiquarian=true` rather than promoted as a physical bookstore.
3. `The Chestnut Tree Bookshop`, `Petrarch's Bookshop`, and `Margaret River BookShop` demonstrate normal physical store rows across Victoria, Tasmania, and Western Australia.

## Extraction plan

1. Crawl the WordPress/Love Your Bookshop store profile space by sitemap, search-result discovery, and/or endpoint discovery.
2. Parse each `/store/<slug>/` profile into a staging table preserving raw description and badge text.
3. Normalize `entity_role_primary` and role flags before promotion.
4. Keep the ABA member/directory taxonomy as governance metadata, especially online-only, antiquarian/secondhand, specialist, chain/multi-site, and gift-card flags.
5. Do not infer a national bookstore count from visible search pages unless the full store index is crawled and deduped.

## Limits of this checkpoint

The current runtime did not run a full crawl or confirm a public bulk API. This package is therefore a probe plus field map, samples, and ready-to-run harvester scaffold, not a completed national export.

## Key URLs

- https://loveyourbookshop.org.au/about/
- https://loveyourbookshop.org.au/find-a-bookshop/
- https://t222.membes-ams.com/_membership.join/form/typeid/4340?schedulePmtOption=
- https://loveyourbookshop.org.au/store/pictures-and-pages/
- https://loveyourbookshop.org.au/store/lamdha-books/
