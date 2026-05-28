# External Repo Intake: Book/Buyback Utility Sources

Date: 2026-05-27

Scope reviewed:

- <https://github.com/GingerNinja23/bookbargain>
- <https://github.com/flyingfinger1/buyback-scout>
- <https://github.com/prajan1110/BOOK_SWAP>
- <https://github.com/tripathiaman9354/isbn-book-finder>
- <https://github.com/IAmM3ta/BookHunter>
- <https://github.com/andrewmmc/bookscompare>

Additional open-source/public sources reviewed after the second prompt:

- <https://github.com/ravila4/abebooks>
- <https://github.com/rayment/bookfind>
- <https://github.com/MacFJA/BookRetriever>
- <https://github.com/xlcnd/isbnlib>
- <https://www.vialibri.net/content/search-link-api>
- <https://bookscouter.gitbook.io/bookscouter>
- <https://www.addall.com/about.html>
- <https://github.com/gorbash1370/humble-bundle-book-info>

`flyingfinger1/buyback-scout` was listed twice by the requester and was reviewed once.

## High-Value Findings

### `xlcnd/isbnlib`

Classification: **high-value QA/comparison dependency; not a direct runtime replacement**.

Useful behavior found:

- ISBN canonicalization, validation, ISBN-10 to ISBN-13 conversion, ISBN-like extraction from text, metadata lookup, edition lookup, and provider/plugin architecture.
- The library is mature and useful as an external reference implementation for batch audits.
- It has more surface area than RBM needs for hot spider paths.

Decision:

- Keep `src/isbn_utils.py` as the canonical runtime helper because it is dependency-free, already integrated into many spiders, and deliberately conservative about false positives.
- Use `isbnlib` as an optional QA/evaluation comparator. It is now installed in `/home/davidgn/.venvs/work` for this evaluation, but the repo scripts tolerate it being absent.

Implemented RBM action:

- Added `scripts/evaluate_isbnlib.py`.
- Generated `logs/isbnlib_evaluation_2026-05-27.json`.
- The evaluation found a real local edge case: `normalize_isbn("9783442481754")` previously returned a converted ISBN-10 substring even though the 13-digit input itself is checksum-invalid. `src/isbn_utils.py` now rejects invalid exact-length ISBN-13 inputs instead of searching for valid ISBN-10 substrings inside them.
- Added regression coverage in `tests/test_external_repo_utilities.py`.

Why this is the right boundary:

- Replacing the local helper wholesale would introduce more dependency and behavior churn than necessary.
- Using `isbnlib` as a comparator gives us the useful external truth source without changing every spider's runtime dependency chain.
- The local helper now behaves more safely on bad EANs, which matters for barcode/OCR/app-tier inputs.

Sources:

- <https://github.com/xlcnd/isbnlib>

### AbeBooks, viaLibri, AddALL, BookFinder, Biblio rare-book links

Classification: **high-value manual valuation routing; not automation targets by default**.

Useful surfaces found:

- `ravila4/abebooks` demonstrates that AbeBooks Search Web Services can return best-new and best-used pricing fields by ISBN when API access is available.
- `ravila4/abebooks` also exposes the unauthenticated pricing-service shape observed in older client code:
  - `POST https://www.abebooks.com/servlet/DWRestService/pricingservice`
  - form fields: `action=getPricingDataByISBN`, `isbn={ean}`, `container=pricingService-{ean}`
  - response fields include best-new and best-used pricing blocks when the endpoint is reachable.
- `rayment/bookfind` documents the BookFinder ISBN search URL shape:
  - `https://bookfinder.com/search/?keywords={isbn}&currency={currency}&destination={destination}&lang=en&st=sh&ac=qr&submit=`
  - useful HTML markers include `describe-isbn-title`, `describe-isbn`, `results-table-Logo`, `data-price`, `results-price`, `item-note`, and redirect targets in the `bu` query parameter.
- viaLibri publishes a Search Link API that supports source, author, title, publisher, all-text, year range, price range, currency, and sort parameters. It explicitly says ISBN can go in `all_text`.
- viaLibri also explicitly restricts automated searches and states that unauthenticated users are routed through login/register, so it should be treated as a manual deep-link target.
- AddALL and BookFinder are useful long-running price-comparison portals for used, rare, and out-of-print books; they are better harvested as human-review links unless a documented API/feed is found.
- Biblio ISBN search is useful as another rare/used seller-marketplace review route.

Decision:

- Add link generation rather than scrapers.
- Do not automate viaLibri searches from RBM.
- Do not claim AbeBooks API productivity without credentials/API terms; use regular search links and leave API probing as a credentialed future task.

Implemented RBM action:

- Added `scripts/generate_rare_book_links.py`.
- The script accepts either structured CLI fields or OCR/copied text and emits manual review links for AbeBooks, BookFinder, Biblio, Google Books, Open Library, AddALL, and viaLibri.
- Generated `logs/rare_book_links_sample_2026-05-27.json`.
- Added tests for link generation and text-derived rare-book signal handling in `tests/test_external_repo_utilities.py`.
- Added `scripts/probe_retail_price_endpoints.py` as a bounded probe for the AbeBooks pricing-service and BookFinder ISBN search surfaces. This is a probe, not a fleet spider; it records structured `offer`, `no_offer`, or `error` rows and keeps endpoint volatility visible.
- Added parser coverage for AbeBooks pricing payloads and BookFinder HTML offer extraction in `tests/test_external_repo_utilities.py`.
- Live probe evidence for `9780140449136` was written to `logs/retail_price_probe_2026-05-27.json`: AbeBooks returned new/used price signals (`US$ 12.50` and `US$ 6.87`), while BookFinder returned `no_offer` from this environment/parser run.
- Follow-up batch evidence was written to `logs/retail_price_probe_batch_2026-05-28.json` for three ISBNs. AbeBooks returned new/used prices for all three; BookFinder consistently returned an AWS WAF JavaScript challenge.
- Saved the BookFinder challenge page and metadata to `logs/bookfinder_live_9780140449136_2026-05-28.html` and `.meta.json`; the probe now reports this as `error: AWS WAF JavaScript challenge` instead of a misleading `no_offer`.
- Added a fixture-backed AbeBooks regression test using `tests/fixtures/abebooks_pricing_9780140449136.json`.

Why this is the right boundary:

- Rare-book valuation often depends on edition, condition, seller notes, signed/inscribed status, and pre-ISBN context. A direct scraper would create false precision.
- Manual deep links preserve speed while keeping the human review step where the source itself requires it or where value judgments are subtle.
- This complements the `BookHunter` text-signal extractor: OCR/copy text can now turn directly into review links.
- AbeBooks and BookFinder probing is useful for endpoint drift checks, but it should stay bounded and evidence-oriented until rate limits, terms, and sustained productivity are understood.

Sources:

- <https://github.com/ravila4/abebooks>
- <https://github.com/rayment/bookfind>
- <https://www.vialibri.net/content/search-link-api>
- <https://www.addall.com/about.html>

### `MacFJA/BookRetriever`

Classification: **high-value provider universe and PHP parser reference; limited direct endpoint portability**.

Useful behavior found:

- The provider checklist is a compact source-discovery map: AbeBooks, Amazon, AntoineOnline, Archive.org, DigitEyes, eBay, EbooksGratuits, EuroBuch, Eyrolles, FeedBooks, GoodReads, Google Books, ISBNdb, LaLibrairie, LibraryHub, LibraryThing, LOC, OCLC, OpenLibrary, and RandomHouse.
- The AbeBooks provider builds `https://www.abebooks.com/servlet/SearchResults?...` queries with author/title/ISBN fields and extracts Schema.org `Book` microdata from search results.
- The eBay provider uses official eBay developer SDK flows, including product/keyword search paths for ISBN/EAN/UPC/EPID identifiers.

Limitations:

- Several providers require API keys, credentials, or official SDK access; this is not a no-key endpoint cache.
- HTML providers are old enough that selectors must be revalidated before production use.
- Amazon/eBay-style integrations must be credentialed and terms-aware.

Recommended RBM action:

- Use the provider list as a source-gap checklist for future enrichment and app/API reconnaissance.
- Prefer already-supported official APIs where credentials exist: OpenLibrary, Google Books, LOC, OCLC/WorldCat where permitted, eBay SDK, and ISBNdb.
- Treat the AbeBooks Schema.org scraper pattern as a parser idea only; use `scripts/probe_retail_price_endpoints.py` and manual links for bounded current evidence.

Sources:

- <https://github.com/MacFJA/BookRetriever>

### `flyingfinger1/buyback-scout`

Classification: **highly useful for app/API endpoint reconnaissance**.

Useful surfaces found:

- Momox direct offer endpoint:
  - `GET https://api.momox.de/api/v4/media/offer/?ean={ean}`
  - Required headers shown in `server.js`: `X-API-TOKEN`, `X-MARKETPLACE-ID: momox_de`, Android-ish `User-Agent`, `Accept: application/json`.
- Rebuy bulk ISBN endpoint:
  - `POST https://www.rebuy.de/verkaufen/api/bulk-isbn`
  - JSON body shape used by frontend: `{ "identifiers": isbn }`
  - Response parsing expects `purchasable[].product.identifiers_ean`, `identifiers_isbn`, and `price_purchase` in cents.
- Bonavendi v2 flow:
  - `POST https://api.bonavendi.de/rest/v2/products/{ean}`
  - Resolve product `uuid`, then `POST /rest/v2/products/{uuid}/buyOffers?maxAgeOfOfferInMinutes=-1`
  - Response offers expose partner names and prices; useful because Bonavendi aggregates many German buyback partners.

Recommended RBM action:

- Add a small `buyback_endpoint_probe` note/script for Momox, Rebuy, and Bonavendi under app/API research rather than treating this as a normal marketplace spider.
- Treat the Momox token as a public reverse-engineered token, not a secret. Do not commit any newly discovered private credentials.
- These endpoints are fixed-price buyback/recommerce signals, useful for Germany/DACH weak-fit core coverage and for app-tier APK follow-up.

Implemented RBM action:

- Added `scripts/probe_buyback_endpoints.py`.
- The probe emits JSON offers for Momox, Rebuy, and Bonavendi.
- Momox requires `MOMOX_TOKEN` or `--momox-token`; no token is committed in this repo.
- Rebuy and Bonavendi can be probed without local credentials.
- Added parser/unit coverage in `tests/test_external_repo_utilities.py`.
- Live probe evidence was written to `logs/buyback_endpoint_probe_2026-05-27.json` for ISBN/EAN `9783442481754`. From this environment: Momox was skipped because no token was configured, Rebuy returned HTTP 429, and Bonavendi returned HTTP 403. Treat this as useful endpoint intelligence but not yet a productive ingestion path.

Sources:

- <https://github.com/flyingfinger1/buyback-scout/blob/main/README.md>
- <https://github.com/flyingfinger1/buyback-scout/blob/main/server.js>
- <https://github.com/flyingfinger1/buyback-scout/blob/main/index.html>

### BookScouter public docs

Classification: **useful source/vendor-universe intelligence; not yet endpoint intelligence**.

Useful behavior found:

- BookScouter describes itself as comparing offers from 30+ book buyback vendors from a single ISBN search.
- It is useful for identifying buyback vendor coverage gaps and app workflow expectations.

Decision:

- Do not scrape BookScouter first.
- Use it as a vendor universe checklist after individual endpoint probes mature.

Sources:

- <https://bookscouter.gitbook.io/bookscouter>

### `andrewmmc/bookscompare`

Classification: **already useful and already mostly integrated**.

Useful surfaces confirmed:

- Books.com.tw: `https://search.books.com.tw/search/query/cat/all/sort/1/v/0/page/1/spell/3/key/{query}`
- Kingstone: `https://www.kingstone.com.tw/search/key/{query}/dis/list?`
- Eslite API: `https://athena.eslite.com/api/v2/search?q={query}`
- Cite: `https://www.cite.com.tw/search_result?keywords={query}`
- Valuable parser fixtures exist under `apps/api/test/fixtures/*`.

Current RBM state:

- These four provider surfaces have already been mapped into `src/books_tw_spider.py`, `src/kingstone_spider.py`, `src/eslite_tw_spider.py`, and `src/cite_tw_spider.py`.
- The remaining useful lift is to mirror more of BooksCompare's fixture coverage, especially negative/no-result fixtures and stricter parse-failure behavior.

Recommended RBM action:

- Pull parser fixture ideas, not application code.
- Keep `docs/TAIWAN_BOOKSCOMPARE_INTAKE_2026-05-27.md` as the main Taiwan mapping note.
- Add registry/reconciler coverage for Cite / 城邦讀書花園 if missing.

Sources:

- <https://github.com/andrewmmc/bookscompare/blob/master/README.md>
- <https://github.com/andrewmmc/bookscompare/blob/master/apps/api/src/sources/books-com-tw.ts>
- <https://github.com/andrewmmc/bookscompare/blob/master/apps/api/src/sources/kingstone.ts>
- <https://github.com/andrewmmc/bookscompare/blob/master/apps/api/src/sources/eslite.ts>
- <https://github.com/andrewmmc/bookscompare/blob/master/apps/api/src/sources/cite.ts>

### `IAmM3ta/BookHunter`

Classification: **useful for acquisition/triage workflow, not provider endpoints**.

Useful ideas found:

- OCR/barcode-first thrift workflow with structured extraction fields: ISBN, title, author, publisher, year, edition, cover type, OCR confidence, condition signals.
- Heuristics worth copying into future image-assisted triage:
  - edition keywords such as first edition, first printing, signed, inscribed, proof, ARC;
  - simple yellowing estimate as a condition proxy;
  - threshold-based yes/pass decision logic.
- Good conceptual fit for the APK archive and mobile/app-tier backlog: phone camera, haptic feedback, and low-attention scan loops.

Limitations:

- Price aggregation is mock/prototype only.
- No new marketplace endpoints beyond planned eBay/AbeBooks/Amazon proxy ideas.
- Current OCR regex should not replace RBM's ISBN normalization without tests.

Recommended RBM action:

- Consider a later `image_assisted_book_triage.py` prototype using the metadata schema ideas, especially for thrift/book photos and APK/mobile workflows.
- Do not treat this as a live price-source implementation.

Implemented RBM action:

- Added `scripts/extract_book_text_signals.py`, a dependency-light utility that accepts OCR/copied text and extracts ISBNs, years, edition/rare flags, title/author guesses, and a `needs_manual_review` boolean.
- Added parser/unit coverage in `tests/test_external_repo_utilities.py`.

Sources:

- <https://github.com/IAmM3ta/BookHunter/blob/main/README.md>
- <https://github.com/IAmM3ta/BookHunter/blob/main/DESIGN.md>
- <https://github.com/IAmM3ta/BookHunter/blob/main/python/book_scanner_prototype.py>

### `gorbash1370/humble-bundle-book-info`

Classification: **medium-value enrichment workflow reference**.

Useful behavior found:

- Combines page extraction, Google Books enrichment, ISBN/ASIN discovery, Amazon URL gathering, and Bing Search API use for review/price metadata.
- The most relevant RBM idea is not Humble Bundle itself; it is the enrichment pipeline pattern: source page -> candidate title/author -> Google Books metadata -> external search URLs/ASINs.

Decision:

- Do not add Humble Bundle-specific scraping to this fleet pass.
- Keep the workflow pattern in mind for ebook/bundle surfaces and title-only rare-book triage.

Sources:

- <https://github.com/gorbash1370/humble-bundle-book-info>

## Medium / Narrow Findings

### `GingerNinja23/bookbargain`

Classification: **historically useful for India provider list and URL patterns; code is stale**.

Useful surfaces found:

- Supported Indian e-commerce sources: Flipkart, Amazon India, Infibeam, uRead, Crossword, Landmark.
- URL patterns:
  - Amazon India direct ISBN/ASIN-ish `http://www.amazon.in/dp/{isbn10-or-asin}`
  - Flipkart search `http://www.flipkart.com/search?q={isbn13}`
  - Infibeam `http://www.infibeam.com/Books/search?q={isbn}`
  - Crossword `http://www.crossword.in/books/search?q={isbn13}`
  - uRead `http://www.uread.com/search-books/{isbn13}`
  - Landmark `http://www.landmarkonthenet.com/books/search/?q={isbn13}`

Limitations:

- Python 2 era code using `mechanize`, `urllib2`, PhantomJS, and old selectors.
- Several surfaces are likely dead, changed, or no longer relevant.
- The README explicitly notes robot rules being ignored for Infibeam; do not copy that behavior.

Recommended RBM action:

- Use only as a historical checklist for India/e-commerce source names.
- Cross-check against the existing South Asia fleet and APK archive targets such as BookChor/BookLal/BookMamu/BooksPie/Pustak Market.
- Do not port the scraper modules directly.

Sources:

- <https://github.com/GingerNinja23/bookbargain/blob/master/README.md>
- <https://github.com/GingerNinja23/bookbargain/tree/master/bookbargain_api/modules>

### `tripathiaman9354/isbn-book-finder`

Classification: **low-to-medium utility as a metadata fallback example**.

Useful surfaces found:

- Open Library metadata lookup:
  - `https://openlibrary.org/api/books?bibkeys=ISBN:{isbn}&format=json&jscmd=data`
- Google Books ISBN lookup:
  - `https://www.googleapis.com/books/v1/volumes?q=isbn:{isbn}`
- Merge order in code currently tries Open Library, then fills gaps from Google Books.

Limitations:

- Backend/demo app, not a marketplace or buyback crawler.
- Uses local MySQL credentials in `application.properties`; do not copy.
- Controller docs and route implementation differ (`README` says `/api/books/{isbn}`, implementation uses `/api/books/search/{isbn}`).

Recommended RBM action:

- No direct crawler work.
- Keep Open Library/Google Books fallback shape in mind for bibliographic enrichment where marketplace pages lack metadata.

Sources:

- <https://github.com/tripathiaman9354/isbn-book-finder/blob/main/README.md>
- <https://github.com/tripathiaman9354/isbn-book-finder/blob/main/src/main/java/com/isbn/bookfinder/isbn_book_service/services/BookService.java>
- <https://github.com/tripathiaman9354/isbn-book-finder/blob/main/src/main/java/com/isbn/bookfinder/isbn_book_service/controller/BookController.java>

## Low-Value Findings

### `prajan1110/BOOK_SWAP`

Classification: **mostly not useful for RBM crawling; useful only as marketplace-domain schema inspiration**.

Useful pieces:

- Data model has book/listing/condition/verification concepts.
- UI has an ISBN scanner component and condition verification photo guidelines.
- Server route includes a mock `/api/isbn/:isbn/estimate` based on local database `originalPrice`.

Limitations:

- No real external price or buyback integration.
- ISBN scanner is simulated in frontend.
- Price estimate logic is mock and depends on local seeded book records.
- More of a Replit-style used-book marketplace app than source intelligence.

Recommended RBM action:

- Do not spend more time here unless building RBM-facing UI/schema ideas.
- Do not treat it as endpoint intelligence.

Sources:

- <https://github.com/prajan1110/BOOK_SWAP/blob/main/README.md>
- <https://github.com/prajan1110/BOOK_SWAP/blob/main/server/routes.ts>
- <https://github.com/prajan1110/BOOK_SWAP/blob/main/client/src/components/features/isbn-scanner.tsx>

## Priority Order

1. `buyback-scout`: add/research Momox, Rebuy, Bonavendi endpoint probes.
2. `bookscompare`: harvest additional Taiwan parser fixtures and no-result cases.
3. `BookHunter`: optional future OCR/photo-assisted triage prototype.
4. `bookbargain`: India historical checklist only.
5. `isbn-book-finder`: bibliographic fallback pattern only.
6. `BOOK_SWAP`: no crawler endpoint value.
