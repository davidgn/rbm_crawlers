# READ FIRST — Technical observations and decisions, RBM post-pass231 Libya

## Classification decisions

- **Dar Al-Ruwad / دار الرواد للنشر والتوزيع**: high-confidence `single-store bookstore layer`. The official Libya surface supports a Tripoli bookstore and publisher identity with academic, history, law, and international literature. It is not a third-party or used-book marketplace.
- **Tripoli International Library — Hay Al-Andalous flagship**: high-confidence `single-store bookstore layer`. The direct store surface supports a major Tripoli retail bookstore with academic, scientific, and literary inventory. It is not strict-main.
- **Existing Libya controls**: OpenSooq remains annex/classifieds; Facebook groups remain social resale; Jawad remains a single-store used/new seller; Dar Fergiani and Al-Kon remain bookstore-publisher context.
- **Strict-main gate**: closed. Pass231 did not prove a Libya-native book-specific recommerce platform, independent seller onboarding, or integrated listing and payment mechanics.

## Active spiders verified

The five Pass220 Libya spiders exist in the live tree:

- `darfergiani_spider.py`
- `libya_locanto_spider.py`
- `libya_afribaba_spider.py`
- `alresalah_bookshop_ly_spider.py`
- `libya_opensooq_spider.py`

## Identity resolution

The older weak-fit Tripoli International Library row and the Pass231 flagship row were confirmed as facets of one entity. The direct `https://tripolibooks.ly` surface is retained as the single canonical bookstore row. The LANA distribution-partnership URL is preserved in the consulted-source ledger as supporting identity evidence. CSV validation now reports no duplicate `libya::tripoli_international_library` key and no duplicate Libya canonical URL.

The four repeated `libya::opensooq_libya` compile keys remain expected city and national facets.
