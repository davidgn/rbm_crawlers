# Japan split probe: e-hon bookstore network + 日本の古本屋/Kosho used-antiquarian overlay — 2026-04-26

## Governed classification

Japan should remain a **split-source lane**, not one blended registry:

1. **e-hon / Tohan pickup bookstore network** — `network-grade / pickup-network`. Good for bookstore participation and pickup/delivery-network coverage, but not a statutory bookstore registry and not automatically proof of full retail-store identity for every partner.
2. **日本の古本屋 / Kosho** — `used-antiquarian association-network / marketplace-directory`. Strong used/antiquarian bookstore and dealer surface operated around 全古書連/Tokyo used-book association structures, but includes non-storefront, office-only, warehouse-only, and mail-order dealers.

## Live evidence captured

### e-hon

- e-hon search result snippets identify a `商品を受け取れる書店` search screen where users can search by bookstore-name fragment or bookstore code.
- e-hon public material describes the service as an online bookstore operated by Tohan where items ordered online can be received at about 3,000 member bookstores nationwide.
- The e-hon receiving guide explains that users can select `書店で受け取る` during order checkout and collect at a designated bookstore; it also notes some member stores independently provide delivery service, with details shown in the receiving-store list.

### 日本の古本屋 / Kosho

- The Kosho home page describes a large used-book/antiquarian marketplace with about 1,000 participating used bookstores and more than 7 million inventory items.
- The `古書店検索` page says users can access details/homepages of 全古書連 member used bookstores and warns that some shops are non-storefront or office-operated, so users should contact them in advance.
- The Kosho About page says 全国古書籍商組合連合会 was re-established in 1947 as a national used-bookstore organization, and 日本の古本屋 aims to include all stores under its 2,300-plus member umbrella while being operated by the Tokyo association’s internet division.
- Kosho profile pages expose registration fields such as representative name, location, association affiliation, areas handled, hours, permits, invoice status, access, contact, TEL, and purchase/sale terms.

## Sample row / governance lessons

- `かみふく書房` exposes registered location and association affiliation. Treat as used/antiquarian dealer profile; physical storefront requires profile evidence beyond registration location.
- `松尾堂` explicitly says it does not operate a store and that the registered address is an office while inventory is held separately. This is a strong negative-control row for avoiding storefront overpromotion.
- `明倫館書店` gives a registered location in 神田神保町 and describes a specialist field profile; good used/antiquarian physical/specialist candidate subject to access fields.
- `小山古書店` exposes address and phone through access/contact fields; good sparse-profile row.

## Extraction plan

1. Split Japan into two harvest manifests: `japan_ehon_pickup_network` and `japan_kosho_used_antiquarian`.
2. For e-hon, probe search parameters and prefecture/store-code endpoints; preserve partner status, pickup/delivery method, bookstore code, address, and delivery-service flags. Do not mark as full `bookstore_location` unless the store detail confirms retail bookstore profile.
3. For Kosho, crawl `/abouts/list.php` by prefecture/category and profile pages under `/abouts/?id=...`; parse registered location, access address, TEL, fields, hours, association affiliation, storefront/non-storefront warnings, and dealer terms.
4. Deduplicate between e-hon and Kosho only after preserving `source_layer`; many Kosho rows are used/antiquarian dealers, while e-hon rows are new-book pickup partners.

## Limits of this checkpoint

No full crawl was run and no public bulk export was confirmed. e-hon search pages were partly inaccessible through the current web-rendering tool, so this checkpoint relies on visible public snippets plus the e-hon receiving-guide page for source classification.

## Key URLs

- https://www.e-hon.ne.jp/
- https://www.e-hon.ne.jp/bec/SF/Search
- https://www1.e-hon.ne.jp/content/guide/receive.html
- https://www.kosho.or.jp/
- https://www.kosho.or.jp/abouts/list.php
- https://www.kosho.or.jp/wppost/plg_WpPost_post.php?postid=82
