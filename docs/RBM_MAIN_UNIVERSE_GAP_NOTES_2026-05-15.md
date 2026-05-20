# RBM main-universe gap notes - 2026-05-15

This note records gaps that were reviewed during the non-USA main-universe
coverage pass but were not all suitable for new source crawlers.

## Added as crawler source in this pass

- Angola: `src/angolivros_spider.py`
- Bangladesh: `src/bookcycle_bd_spider.py`
- Belgium: `src/boekwinkeltjes_be_spider.py`
- China: `src/jiushujie_7788_spider.py`
- India: `src/bookbazaar_yournotebook_spider.py`
- India: `src/book_mitra_spider.py`
- Lebanon: `src/urban_books_lb_spider.py`
- Philippines: `src/chapters_ph_spider.py`

Book Mitra note: `src/book_mitra_spider.py` was added after inspecting
`Book+Mitra+–+Buy+&+Sell+Books_1.0.0_apkcombo.com.xapk`. The crawler reads the
public Firestore `books` collection ordered by newest `createdAt`, redacts
seller phone numbers before caching, omits seller auth IDs from emitted rows,
and suppresses implausible numeric prices.

Validation note: the new-source smoke produced listings/cache for all additions
except Angolivros. Angolivros DNS resolves outside the sandbox, but live HTTP
requests to `/`, `/livros/`, `/loja/`, and `/shop/` timed out during this pass.
The source wrapper is present so it can be retried when the site responds.

## Not added

- Chile / Matchbook: registry row has no canonical URL and remains pending
  backfill; no implementation target is available.
- Saudi Arabia / Rofoof: registry marks it as a current-status hold candidate,
  not a strict live inventory target. The known URL is an about page, and direct
  inventory/seller mechanics still need confirmation before source is added.
- United Kingdom / Zapper: dead DNS per current operator check.
- Uruguay / P2P Bookstore: dead DNS per current operator check.
- Ukraine / Bookstock and BOOKMARKET.IN.UA: previously confirmed dead/deferred.

## Territory-surface follow-up

- Austria and Switzerland have explicit registry rows for Buchfreund/booklooker
  territory-facing surfaces. The Germany spiders cover the underlying platforms;
  add wrapper aliases only if downstream coverage reporting needs per-territory
  source files.
