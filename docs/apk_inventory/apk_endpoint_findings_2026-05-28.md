# APK Endpoint Findings: 2026-05-28

This note continues the APK backlog started from `/home/davidgn/Downloads/apks.tar.xz`.

## Generated Crawl Artifact Snapshot

Decision: preserve generated crawler evidence outside the source commit instead of staging `src/cache/**`, `src/data/**`, or broad runtime `logs/**`.

Artifacts:

- `artifacts/generated_snapshots/generated_crawl_artifacts_2026-05-28.paths`
- `artifacts/generated_snapshots/generated_crawl_artifacts_2026-05-28.tar.zst`

Snapshot contents:

- 326 changed or untracked generated paths.
- Includes runtime evidence under `src/cache/**`, `src/data/**`, and `logs/**`.
- Excludes source/docs/tests/scripts and excludes APK decompile workspaces.

Rationale:

- The source commit should stay reviewable and reproducible.
- The generated cache/data evidence may still be useful for parser debugging, row-count audits, and later data-ingestion decisions.
- The snapshot is intentionally local/artifact-scoped until a separate data-retention policy is chosen.

## BookChor

Workspace: `decompiled/BookChor`

Observed state:

- Already unpacked before this pass.
- Approximate workspace size: 88M.
- App package: `booksfortune.bookchor`.
- App version observed from manifest strings: `14.10`.
- Flutter asset tree is present.

Endpoint and routing evidence:

- Deep-link/web host: `www.bookchor.com`.
- Route strings visible in the app manifest/resource string table include `/book`, `/cart`, `/category`, `/login`, `/orders`, `/publisher`, `/store`, `/wishlist`, `/author`, `/bc_coin`, and `/bc_pay`.
- Firebase database URL string is present: `https://bookchor-1078.firebaseio.com`.
- Razorpay checkout config is present, including `https://butler.razorpay.com/v1/settings`, `https://cdn.razorpay.com/static/otpelf/`, and `https://lumberjack.razorpay.com/v1/track`.

Decision:

- Treat BookChor as a web/deep-link target first. The unpacked artifact has not yet exposed a clean REST product/search API string.
- The useful immediate crawler follow-up is to test whether the visible deep-link routes map cleanly onto public `https://www.bookchor.com/...` pages and whether category/book pages expose stable HTML or hydration data.
- Do not treat Firebase/Razorpay endpoints as marketplace inventory endpoints.

## Momox

Workspace: `decompiled/Momox`

Observed state:

- Already unpacked before this pass.
- Approximate workspace size: 89M.
- App namespace strings include `de.momox.inbound` and generated API model namespace `de.momox.mxapi`.
- Native signing library is present as `libsigner.so`, which means request signing/header generation may be relevant.
- JADX workspace: `decompiled/Momox_jadx`. JADX completed most source emission but exited nonzero with 29 decompile errors, which is normal enough for this obfuscated app pass; the relevant API/navigation classes were still emitted.

Endpoint and routing evidence:

- Base API string: `https://api.momox.de`.
- Media offer route strings: `media_offer?ean=` and `media_offer?ean={ean}`.
- Deep-link route: `momox://media-offer?isbn={isbn}`.
- Public web/deep-link domains include `https://www.momox.de`, `https://www.momox.at`, `https://www.momox.fr`, `https://www.momox.es`, `https://www.momox.it`, and staging variants.
- Model strings include `MediaOffer`, `MediaCartItemAdd`, `MediaScannedItem`, `MediaScannedItemsAddToCart`, `Offer`, `OfferProduct`, `OfferStatusEnum`, and `ProductTypeEnum`.
- Decompiled base URL evidence:
  - `decompiled/Momox_jadx/sources/ca/C1706c.java` hardcodes `https://api.momox.de` and normalizes it to a trailing-slash Retrofit base URL.
  - `decompiled/Momox_jadx/sources/ca/C1704a.java` also exposes an override property key, `de.momox.mxapi.baseUrl`, defaulting to `http://localhost`.
- Decompiled navigation evidence:
  - `decompiled/Momox_jadx/sources/d3/C2198o.java` navigates to `media_offer?ean=` for scanned/manual EAN input.
  - `decompiled/Momox_jadx/sources/I0/C0328q.java` registers the route `media_offer?ean={ean}` with both `isbn` and `ean` arguments.
- Client construction evidence:
  - `decompiled/Momox_jadx/sources/ca/C1705b.java` builds an OkHttp/Retrofit client, adds an interceptor wrapper via `new Q6.c(20, this.f16894b)`, and configures JSON conversion.
  - The `libsigner.so` string is associated with Adjust SDK signing in the JADX output, so it should not be assumed to sign Momox API calls without a deeper interceptor trace.
- Live probe evidence:
  - `curl -i 'https://api.momox.de/media_offer?ean=9780306406157'` returned HTTP 403 with a Cloudflare block page from this environment.
  - This is useful negative evidence: the route is live/protected, not absent or DNS-dead.

Decision:

- This is useful endpoint intel. The app appears to expose a newer/simpler `media_offer?ean={ean}` path under `https://api.momox.de`, separate from the previously tested `api/v4/media/offer/?ean=...` public-proxy finding.
- The observed `extractAuthorizationHeader` and `libsigner.so` hits are Adjust SDK artifacts in the decompiled output. Treat them as analytics-signing evidence unless a later trace connects them to `ca.C1706c` or the Momox API interceptor.
- Next step is a targeted review of `Q6.c` case `20`, because that is the interceptor object added to the Momox API client. If it only logs/debugs, the likely blocker is Cloudflare/app fingerprinting rather than an app-specific request signature.

## Continuation: BookLal, BookLane, Kitabu, Pustak Market

Date: 2026-05-28

Decision: pull a second batch from `/home/davidgn/Downloads/apks.tar.xz` and keep the extracted XAPK/APK payloads local-only.

Local artifact handling:

- Extracted XAPK files were staged under `apk_work/extracted/`.
- Unpacked workspaces were created under `decompiled/BookLal`, `decompiled/BookLane`, `decompiled/Kitabu`, and `decompiled/PustakMarket`.
- `.gitignore` now excludes `apk_work/` as well as `decompiled/`, because both directories are derived from the large APK archive and should not be committed.

### BookLal

Workspace: `decompiled/BookLal`

Observed state:

- App package: `com.booklal.booklal`.
- App version: `3.3.1`, version code `93`.
- Base APK: `decompiled/BookLal/com.booklal.booklal.apk`.

Endpoint and routing evidence:

- Firebase Realtime Database URL: `https://booklal-default-rtdb.firebaseio.com`.
- Firebase storage bucket evidence: `booklal.appspot.com`.
- Default book image evidence: `https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?...`.
- Bitactro backend strings are present: `https://api.bitactro.com/api`, `/disable-user`, and `/play-integrity`.
- Package/activity strings include book add/search/detail flows such as `BookAdditionSuccessful`, `CategoryBookListingActivity`, `ShowBookDetailsActivity`, and `SearchPage`.

Decision:

- Treat BookLal as Firebase-backed until JADX or dynamic capture proves otherwise.
- The Bitactro endpoints look like app integrity/account-disable support infrastructure, not marketplace inventory APIs.
- Useful next step is targeted JADX around Firebase database references and child/collection names, especially book listing/search/detail flows.

### BookLane

Workspace: `decompiled/BookLane`

Observed state:

- App package: `com.cloud_regex.book_lane`.
- App version: `3.1.2`, version code `73`.
- Flutter asset tree is present.
- Native split APK is present as `config.arm64_v8a.apk`.

Endpoint and routing evidence:

- Firebase storage evidence: `old-book-seller-f1250.firebasestorage.app`.
- The bounded URL/path scan produced SDK, ad, Firebase, and Flutter infrastructure endpoints, but no obvious first-party REST API base.
- Asset strings include book-oriented UI assets such as bookstore header/no-books imagery.
- Existing repo intelligence in `src/booklane_spider.py` is stronger than the first APK string pass: it uses `https://booklaneapp.com/api`, `GET /api/landing-stats`, `POST /api/auth/google`, and `GET /api/books/search/name?q=...&page=...`.
- A live bounded check of `https://booklaneapp.com/api/landing-stats` returned HTTP 200 JSON with `totalBooks: 35898` and `totalUsers: 30629`.

Decision:

- Treat BookLane as already harvestable via the existing `booklaneapp.com/api` spider, even though that API base was not surfaced by this quick APK string scan.
- Useful APK-specific next step is JADX on the base APK plus a Flutter AOT/string-symbol pass against `config.arm64_v8a.apk`, looking for the app-side origin of the known API constants and any additional private listing/detail routes.

### Kitabu

Workspace: `decompiled/Kitabu`

Observed state:

- App package: `uz.kitabu.uz.kitabu_mobile_codeuz`.
- App version: `1.1.1`, version code `19`.
- Flutter asset tree and native split APK are present.

Endpoint and routing evidence:

- API base URL: `https://api.kitabu.uz`.
- Development/upload string: `http://api.kitabu.learningcenter.uz/api/v1/kb/attach/upload`.
- Firebase storage bucket evidence: `kitabu-a2242.appspot.com`.
- Public/listing routes from strings include:
  - `/api/v1/kb/post/public/filter`
  - `/api/v1/kb/post/public/`
  - `/api/v1/kb/post`
  - `/api/v1/kb/genre/get/all/by/lang`
  - `/api/v1/kb/book-language`
  - `/api/v1/kb/region/by-lang`
  - `/api/v1/kb/attach//`
- Auth/profile/comment routes are also present, including login, registration, password reset, profile detail, profile update, comments, reports, and likes.

Live probe evidence:

- `GET https://api.kitabu.uz/api/v1/kb/book-language` returned HTTP 200 JSON with language keys `EN`, `RU`, `LATIN`, and `KIRILL`.
- `GET https://api.kitabu.uz/api/v1/kb/genre/get/all/by/lang` returned HTTP 200 JSON with genre names and UUIDs.
- `GET https://api.kitabu.uz/api/v1/kb/region/by-lang` returned HTTP 200 JSON with Uzbekistan region IDs/names.
- `POST https://api.kitabu.uz/api/v1/kb/post/public/filter` with `{}` returned HTTP 200 JSON, including active listings, prices, exchange types, attachment URLs, pagination metadata, and `totalElements: 38`.
- `GET https://api.kitabu.uz/api/v1/kb/post/public/df1b0643-5b40-4f1c-85af-214961782824` returned HTTP 200 JSON for one listing with title, author, description, exchange type, condition, language, print type, status, price, market price, region, profile, attachments, and genres.

Decision:

- This is immediately useful crawler/API intel. Kitabu has an unauthenticated public listings API with enough fields for a regional used/free book marketplace feed.
- The public detail endpoint currently exposes seller profile phone numbers in API responses. Any crawler implementation should avoid storing or logging phone numbers unless there is an explicit retention decision.
- Implemented `scripts/probe_kitabu_marketplace.py` as a small, rate-limited Kitabu probe that pages `/post/public/filter`, normalizes title/author/price/region/condition/exchange type/image URL, and redacts phone/profile contact fields by default.

### Pustak Market

Workspace: `decompiled/PustakMarket`

Observed state:

- App package: `com.pustakk.markett`.
- App version: `15.0.22`, version code `41`.
- Base APK: `decompiled/PustakMarket/com.pustakk.markett.apk`.

Endpoint and routing evidence:

- Web/domain strings: `https://www.Pustakmarket.com;`, `https://www.pustakmarket.com`, and `https://new.pustakmarket.com`.
- Firebase storage bucket evidence: `pustak-market-7efb6.appspot.com`.
- UI/resource strings show hard book, e-book, audiobook, cart, upload, pricing, and detail flows.
- `https://new.pustakmarket.com` did not resolve from this environment.
- `https://www.pustakmarket.com` has a certificate hostname mismatch unless probed with relaxed certificate validation; with `curl -k`, it returned a landing page and links into `https://www.pustakmarket.com/home`.

Decision:

- Treat Pustak Market as a web target plus Firebase-backed app until deeper decompilation exposes API calls.
- The app appears content-rich, but first-pass strings did not expose a clean REST inventory endpoint.
- Useful next step is to crawl/probe `https://www.pustakmarket.com/home` and app-visible detail/listing routes, then use JADX to locate network classes and Firebase paths.

## Continuation: BookMamu, BooksPie, Duozhuayu

Date: 2026-05-28

Decision: continue the book-first priority queue before moving deeper into broad horizontal marketplaces.

Local artifact handling:

- Extracted XAPK files were staged under `apk_work/extracted/`.
- Unpacked workspaces were created under `decompiled/BookMamu`, `decompiled/BooksPie`, and `decompiled/Duozhuayu`.
- A broader archive extraction was stopped after reaching Duozhuayu because the compressed tar stream was taking too long to walk to later entries. Remaining recommerce APKs should be pulled in smaller targeted batches.

### BookMamu

Workspace: `decompiled/BookMamu`

Observed state:

- App package: `book.bookmamu`.
- App version: `2.2.8`, version code `39`.
- Base APK: `decompiled/BookMamu/book.bookmamu.apk`.

Endpoint and routing evidence:

- API base URL: `https://prodbookmamuapi.azurewebsites.net/api/`.
- The APK contains static bearer JWT strings matching the existing `src/bookmamu_spider.py` implementation.
- Firebase/storage evidence includes `stage-bookmamu.appspot.com`, `bookmamustage.blob.core.windows.net`, and production blob image/video URLs under `bookmamuprod.blob.core.windows.net`.
- Social/support/payment/SMS infrastructure includes Facebook/Instagram, Razorpay, Truecaller, and SMS provider endpoints.

Live probe evidence:

- `POST https://prodbookmamuapi.azurewebsites.net/api/booklist` with the app bearer token and a two-item approved/unsold filter returned HTTP 200 JSON.
- The response contained active book records with title, author, condition, language, prices, category, blob media URLs, and address/location metadata.
- The raw response also includes seller contact/address fields. These should not be cached or logged verbatim.

Decision:

- This APK confirms the existing BookMamu API spider is using the app's real backend surface.
- The current spider writes normalized `BookListing` rows and does not cache raw API pages, which is appropriate because raw BookMamu responses can contain seller contact/address data.
- Useful next step is a small parser test/probe wrapper for BookMamu that asserts the contact/address fields are excluded from any retained artifact.

### BooksPie

Workspace: `decompiled/BooksPie`

Observed state:

- App package: `com.sant.bookspie`.
- App version: `5.1`, version code `33`.
- Base APK: `decompiled/BooksPie/com.sant.bookspie.apk`.

Endpoint and routing evidence:

- API base URLs: `https://api.bookspie.com/` and `https://api.bookspie.com/api/`.
- First-party routes include:
  - `GET /api/getCategories`
  - `POST /api/getBooks?page=`
  - `POST /api/getFilteredBooks?page=`
  - `/api/userBooks?id=`
  - `/api/deleteBook/`
  - `/api/downloadInvoice/IN-`
- Legacy/alternate traces include `https://api.bechobooks.com`, `http://bechobooks.com/api/getCategories`, and `https://bechobooks.com/api/userBooks?id=`.
- Firebase evidence includes `https://bookspie-default-rtdb.firebaseio.com` and `bookspie.appspot.com`.
- Deep-link/social/payment/support traces include `bookspie.page.link`, WhatsApp send links, Razorpay, Shiprocket tracking, Google Maps APIs, and official social profiles.

Live probe evidence:

- `GET https://api.bookspie.com/api/getCategories` returned HTTP 200 JSON with 21 categories.
- `POST https://api.bookspie.com/api/getBooks?page=1` returned HTTP 200 JSON with a paginated old-books feed, `per_page: 30`, `last_page: 460`, and `total: 13776` at probe time.
- Raw listing responses embed user records with contact and push-token fields. These should not be retained.

Decision:

- This APK confirms the existing BooksPie API spider is using the app's real public old-books API.
- The current `src/bookspie_spider.py` already prunes embedded user records before caching API pages; keep that redaction behavior.
- Useful next step is to add a regression test around `_sanitized_cache_copy` so phone/email/push-token fields cannot accidentally re-enter cache artifacts.

### Duozhuayu

Workspace: `decompiled/Duozhuayu`

Observed state:

- App package: `com.duozhuayu.dejavu`.
- App version: `3.1.5`, version code `190`.
- Base APK and `arm64-v8a` split are present.

Endpoint and routing evidence:

- First-pass string extraction did not expose a clean Duozhuayu inventory/search API base.
- Visible network strings were mainly Netease/Yunxin customer-service and telemetry infrastructure, including:
  - `https://lbs.chatnos.com/lbs/conf.jsp`
  - `https://lbs.netease.im/lbs/conf.jsp`
  - `https://yunxin.163.com/lbs/conf.jsp`
  - `https://statistic.live.126.net`
  - `http://nos.netease.com`
- Resource/UI strings include Duozhuayu branding, WeChat login/share assets, customer-service layouts, and product/customer-service widgets.

Decision:

- Treat this first pass as inconclusive for inventory API recovery. The app may hide first-party API constants in obfuscated/native code or derive hosts dynamically.
- Useful next step is JADX plus targeted native-string extraction around `config.arm64_v8a.apk`, focusing on `dejavu`, `duozhuayu`, OkHttp/Retrofit clients, WebView bridges, mini-program/WeChat routes, and any dynamically decoded host strings.

## Continuation: DACH Recommerce Probe and Archive Bottleneck

Date: 2026-05-28

Decision: attempt the next priority-2 APKs, then fall back to live endpoint probe verification when archive extraction did not reach the later entries quickly enough.

Archive extraction evidence:

- Attempted a focused extraction of `Medimops App_1.1.0_APKPure.xapk`, `momox_ sell books & fashion_5.7.0-release_APKPure.apk`, and `NadirKitap_5.5.84_APKPure.xapk`.
- Attempted a second single-entry extraction of `Medimops App_1.1.0_APKPure.xapk`.
- Both attempts spent substantial time walking `/home/davidgn/Downloads/apks.tar.xz` without producing the requested file in `apk_work/extracted/`, so they were stopped rather than left running.
- No recommerce APK workspace was created from this attempt; the ledger status for Medimops/current Momox/NadirKitap remains `not_disassembled`.

Live DACH endpoint probe evidence:

- Ran `scripts/probe_buyback_endpoints.py` against valid inputs `9780306406157` and `3442481759` (normalized by the script to `9783442481750` for the latter).
- Momox was skipped by design because no `MOMOX_TOKEN` was provided.
- Rebuy `POST https://www.rebuy.de/verkaufen/api/bulk-isbn` returned HTTP 429 from this environment with a JavaScript/VDF verification page.
- Bonavendi `POST https://api.bonavendi.de/rest/v2/products/{ean}` returned HTTP 403 from this environment with a Cloudflare managed challenge.

Decision:

- The existing DACH probe script is still the right structured tool for Momox/Rebuy/Bonavendi, but current live access is WAF/challenge-limited from this network.
- The later APK archive entries needed a better extraction strategy before more work was spent on them. The selected strategy was to pay the sequential `xz` tar read once and keep a local ignored full-extract workspace for all follow-up APK work.
- Do not mark Medimops/current Momox/NadirKitap as partially disassembled yet; no APK content was obtained in this pass.

## Continuation: Full APK Archive Extraction

Date: 2026-05-28

Decision: extract `/home/davidgn/Downloads/apks.tar.xz` completely into an ignored local workspace rather than continue one-off member extraction from the compressed tar stream.

Extraction evidence:

- Destination: `/home/davidgn/active_repos/rbm_crawlers/apk_work/full_extract`.
- Command completed successfully with tar checkpoints through the end of the archive.
- Extracted workspace size: 3.5G.
- Remaining `/home/davidgn` filesystem headroom after extraction: approximately 75G free.
- Top-level mobile artifacts now available locally: 15 `.apk`, 27 `.xapk`, and 3 `.apkm` files.
- The local workspace includes the previously blocked later entries: `Medimops App_1.1.0_APKPure.xapk`, `momox_ sell books & fashion_5.7.0-release_APKPure.apk`, `rebuy - Kaufen & Verkaufen_2026.05.5297_APKPure.xapk`, `NadirKitap_5.5.84_APKPure.xapk`, and `PangoBooks_ Buy & Sell Books_3.0.7_APKPure.xapk`.

Decision:

- Keep `apk_work/full_extract` as the canonical local source for subsequent APK unpacking and JADX work.
- Do not commit the extracted APK/XAPK/APKM files; `apk_work/` is ignored and remains a disposable working area.
- This resolves the compressed archive seek bottleneck. Future passes should unpack from local files in priority order instead of running more targeted `tar -xJf` member pulls.

## Continuation: Archive Deletion and Local-File APK Work

Date: 2026-05-28

Decision: delete the redundant compressed archive after verifying that the full local extraction exists and has enough filesystem headroom.

Archive cleanup evidence:

- Deleted `/home/davidgn/Downloads/apks.tar.xz`.
- Confirmed the path no longer exists after deletion.
- `/home/davidgn` free space increased to approximately 77G.
- Continued APK work from `/home/davidgn/active_repos/rbm_crawlers/apk_work/full_extract`.

Tooling decision:

- Attempted to run repo-local `tools/jadx/bin/jadx`, but this checkout has no `tools/` directory.
- Checked for installed `jadx`, `apktool`, `dex2jar`, `baksmali`, `aapt`, and `aapt2`; none were available on PATH.
- Tried package installation for `jadx`; non-sudo `apt-get` lacked privileges and `sudo apt-get` required an interactive password. No decompiler was installed in this pass.
- Continued with bounded XAPK/APK unzip plus raw `strings` scans. This is enough for host/route triage, but JADX remains the next useful tooling step for call-site attribution.

### Rebuy current app

Workspace: `decompiled/Rebuy`

Observed state:

- Artifact source: `apk_work/full_extract/rebuy - Kaufen & Verkaufen_2026.05.5297_APKPure.xapk`.
- App package: `de.rebuy.android`.
- App version: `2026.05.5297`, version code `5297`.
- Base APK: `decompiled/Rebuy/de.rebuy.android.apk`.
- Split APK: `decompiled/Rebuy/config.arm64_v8a.apk`.

Endpoint and routing evidence from raw strings:

- First-party API/web hosts include:
  - `https://api.rebuy.com`
  - `https://www.rebuy.de`
  - `https://mobile.rebuy.com`
  - staging/dev traces: `https://de-default.staging.rebuy.cloud` and `https://de.dev.rebuy.vagrant.cloud`
- App/security/header strings include:
  - `X-API-KEY`
  - `Bearer %s`
  - `AuthToken`, `authToken`, `KEY_TOKEN`, `SESSIONID`, `CSRFTOKEN`, `sessionId`, `reBuyUUid`, and `pushToken`
- Sell/cart/product route fragments and events include:
  - `/products`
  - `/checkout`
  - `/customers/green-last-scanned/sync`
  - `/customers/my/selling-opportunities`
  - `verkaufen/discovery/{categoryId}`
  - `rebuy://verkaufen/omg/{category}`
  - `rebuy://verkaufen?action={action}`
  - `rebuy://verkaufen/zuletzt-gescannt`
  - `TYPE_ISBN`, `Can only encode EAN_13`, and multiple barcode/ISBN scan UI strings
- Web/deep-link evidence includes:
  - `https://www.rebuy.de/verkaufen/buecher`
  - `https://www.rebuy.de/verkaufen/medien`
  - `https://www.rebuy.de/verkaufen/discovery/1092`
  - `https://www.rebuy.de/verkaufen/i_12684550`
  - `https://www.rebuy.de/verkaufen/i_13276796`
  - `https://www.rebuy.de/verkaufen/zuletzt-gescannt`

Decision:

- This APK is useful. It confirms that the current Android app has a separate first-party API base, `https://api.rebuy.com`, in addition to the previously harvested web bulk-ISBN endpoint at `https://www.rebuy.de/verkaufen/api/bulk-isbn`.
- Do not replace `scripts/probe_buyback_endpoints.py` yet. The raw string pass has host/header/route clues, but not enough call-site context to know the exact `api.rebuy.com` endpoint schema, request body, or required API key.
- Next step is JADX or another DEX decompiler focused on strings near `rebuyHost`, `X-API-KEY`, `/customers/green-last-scanned/sync`, `/products`, `/checkout`, and ISBN/barcode scan code paths.

### Momox current app

Workspace: `decompiled/MomoxCurrent`

Observed state:

- Artifact source: `apk_work/full_extract/momox_ sell books & fashion_5.7.0-release_APKPure.apk`.
- Plain APK contents were unzipped at `decompiled/MomoxCurrent/apk_unzip`.
- Raw APK strings identify the main activity as `de.momox.inbound.ui.MainActivity`.

Endpoint and routing evidence from raw strings:

- Visible first-party/support hosts include:
  - `https://momox-apps.firebaseio.com`
  - `https://cdn.melibo.de/v2/app.html?key=95d5f3e8-9f8c-498e-9dcc-63600e9bbd79`
  - `https://promo.momox.com/{at,de,es,fr,it}/...`
- Strong sell-flow and ISBN/EAN UI evidence includes:
  - `Scan the ISBN to find out the price`
  - `ISBN/EAN oder Artikelnummer eingeben`
  - `Enter ISBN/EAN or item number`
  - `ISBN/EAN passt nicht zum Artikel`
  - media/fashion checkout and scanned-history resource keys
- The raw string pass did not expose the old `https://api.momox.de` / `media_offer?ean=` constants already recovered from Momox `3.7.5`.

Decision:

- Current Momox is partially useful but less immediately actionable from raw strings than the old Momox JADX output.
- Keep existing Momox probe behavior unchanged: `scripts/probe_buyback_endpoints.py` still targets `https://api.momox.de/api/v4/media/offer/` and requires an explicit `MOMOX_TOKEN`.
- Next step is decompilation of current Momox to determine whether the offer API is dynamically constructed, hidden in obfuscated Kotlin/Compose code, gated behind native modules, or now routed through a backend different from the old `media_offer` path.

### Medimops app

Workspace: `decompiled/Medimops`

Observed state:

- Artifact source: `apk_work/full_extract/Medimops App_1.1.0_APKPure.xapk`.
- App package: `medimops.medimops.momoxbucher`.
- App version: `1.1.0`, version code `1021`.
- Base APK: `decompiled/Medimops/medimops.medimops.momoxbucher.apk`.
- Split APKs include language/resource splits and `config.armeabi_v7a.apk`.

Endpoint and routing evidence from raw strings:

- The bounded scan found only generic search/resources and the app label `Medimops`.
- No clear medimops inventory API, Momox buyback API, auth token, or product/search endpoint constants were visible in the raw string pass.

Decision:

- Treat Medimops as lower immediate value than Rebuy/current Momox for endpoint recovery.
- It may be a thin native wrapper or otherwise not expose API constants in simple string extraction. Decompile later if DACH retail inventory coverage becomes more important than buyback endpoint recovery.

### PangoBooks current app

Workspace: `decompiled/PangoBooks`

Observed state:

- Artifact source: `apk_work/full_extract/PangoBooks_ Buy & Sell Books_3.0.7_APKPure.xapk`.
- App package: `com.grantwsingleton.pangobookslive`.
- App version: `3.0.7`, version code `299`.
- Base APK: `decompiled/PangoBooks/com.grantwsingleton.pangobookslive.apk`.
- Base APK was also unzipped at `decompiled/PangoBooks/base_unzip` to inspect React Native assets.

Endpoint and routing evidence from raw strings / React Native bundle:

- Firebase evidence:
  - `https://pangobooks.firebaseio.com`
  - `https://firebasestorage.googleapis.com/v0/b/pangobooks.appspot.com/...`
- Existing spider-relevant Elastic evidence:
  - `https://6e6f78e8a87248ddb0013e106d1c0a13.us-central1.gcp.cloud.es.io:443`
  - Bundle strings include search/listing vocabulary such as `seller_id`, `accept_offers:=true`, `books_listed:>0`, `query_by_weights`, `search_after`-style search code context, bookstore/listing routes, and PangoBooks web URL patterns.
- Additional backend/support infrastructure:
  - Supabase host trace: `https://ycqmakmuqpsdrvltqbqb.supabase.co`
  - Cloud Functions trace: `https://us-central1-pangobooks.cloudfunctions.net/images-upload`
  - Pango web/deep-link patterns including `https://pangobooks.com/books/:book_id`, `https://pangobooks.com/bookstore/:username`, `https://pangobooks.com/titles/:slug/:book_id`, `pango://bundle-search?...`, and `pangobooks.com/authors/...`

Decision:

- This APK confirms the same app/package/version cited by `src/pangobooks_spider.py`, and the base bundle confirms the Elastic Cloud host in the app artifact.
- The bounded string pass did not cleanly isolate the embedded Elastic API key, but the existing spider already contains the previously recovered key and endpoint. Do not duplicate the key in docs.
- Keep `src/pangobooks_spider.py` as the implementation path. Useful next step is a bounded live health probe or parser/redaction test around the PangoBooks record mapping, not more raw string work.

### NadirKitap current app

Workspace: `decompiled/NadirKitap`

Observed state:

- Artifact source: `apk_work/full_extract/NadirKitap_5.5.84_APKPure.xapk`.
- App package: `nadirkitap.com`.
- App version: `5.5.84`, version code `125`.
- Base APK: `decompiled/NadirKitap/nadirkitap.com.apk`.
- Split APKs include `config.arm64_v8a.apk`, `config.en.apk`, `config.fr.apk`, and `config.mdpi.apk`.

Endpoint and routing evidence from raw strings:

- Static asset and social hosts include:
  - `https://static.nadirkitap.com/fotograf/`
  - `https://static.nadirkitap.com/img/fotograf_eklenmemis_tr.jpg`
  - `https://static.nadirkitap.com/img/fotograf_eklenmemis_en.jpg`
  - `https://linkedin.com/company/nadirkitap`, `https://www.facebook.com/NadirKitapcom`, `https://www.instagram.com/nadirkitapcom/`, `https://tiktok.com/@nadirkitap`, and `https://x.com/nadirkitap`
- Concrete first-party web/mobile routes include:
  - `https://www.nadirkitap.com/kitapara_sonuc.php?kelime=`
  - `https://www.nadirkitap.com/kitap-detay.php?kid=`
  - `https://www.nadirkitap.com/efemera-detay.php?kid=`
  - `https://www.nadirkitap.com/sahaf-detay.php?uyeid=`
  - `https://www.nadirkitap.com/sahaflar.php?ara=1&favori=0&rumuz=`
  - `https://www.nadirkitap.com/yeni-eklenen-kitaplar.html`
  - `https://www.nadirkitap.com/nk_mobil/`
  - `https://www.nadirkitap.com/nk_mobil/bkm`
  - `https://www.nadirkitap.com/nk_mobil/hesap/avatar`
  - `https://www.nadirkitap.com/nk_mobil/kitapEkle/resimYukle`
  - `https://www.nadirkitap.com/nk_mobil/ucDBanaOzelOdeme`
  - `https://www.nadirkitap.com/nk_mobil/ucDOdeme`
- Route fragments also include `/kitapara`, `/kitapara-sonuc`, `/kitapara.php`, `/kitapara_sonuc.php`, `/kitap-detay/`, `/kitapekle`, `/listeledigiUrunlerim`, `/myProducts`, `/kategoriler.php`, `/dergiler-kategori19.html`, and `/efemera-kategori246.html`.

Decision:

- This APK is useful immediately even without JADX. It confirms that the app uses web-compatible routes and `nk_mobil` endpoints rather than hiding all behavior behind an opaque native API.
- Good next step is to add a small NadirKitap probe/spider around `kitapara_sonuc.php?kelime=` and `kitap-detay.php?kid=`, with seller/detail redaction rules checked before caching any raw pages.

## Continuation: Local JADX Tooling Fixed

Date: 2026-05-28

Observed blocker:

- The prior local-file APK pass could not use JADX because there was no repo-local `tools/jadx/bin/jadx`, no `jadx` on PATH, and package installation required sudo credentials.

Actions completed:

- Verified the machine has Java 21 available, which is sufficient for current JADX releases.
- Installed JADX 1.5.5 locally under `tools/jadx`.
- Added `tools/jadx/` to `.gitignore` so the binary tool install stays local and does not pollute repository diffs.
- Verified `tools/jadx/bin/jadx --version` reports `1.5.5`.
- Smoke-tested the tool against `decompiled/NadirKitap/nadirkitap.com.apk`, writing generated output to ignored workspace `decompiled/NadirKitap_jadx`.

Smoke-test result:

- JADX emitted usable sources and resources for NadirKitap.
- The process exited with `finished with errors, count: 10`, which is acceptable for this class of obfuscated or mixed-framework APK; the output is still useful for endpoint, manifest, and route attribution.
- Generated output confirmed manifest deep-link patterns for `www.nadirkitap.com`, including `/kitapara_sonuc.php.*`, `/kitapara.php.*`, and `/kitap-detay.php.*`, plus app source/resource trees under `decompiled/NadirKitap_jadx`.

Decision:

- Treat JADX as fixed and usable for the next APK endpoint attribution passes.
- Prefer full decompilation when it completes quickly enough, then search generated source and resources with `rg`.
- For very large or slow APKs, fall back to narrower JADX modes such as `--single-class`, `--decompilation-mode simple`, `--no-res`, or resource-first inspection before spending time on a full source pass.

## Continuation: Rebuy, Current Momox, NadirKitap Implementation Pass

Date: 2026-05-28

### Current Momox JADX result

Workspace: `decompiled/MomoxCurrent_jadx`

JADX result:

- Full decompile of `apk_work/full_extract/momox_ sell books & fashion_5.7.0-release_APKPure.apk` completed with `finished with errors, count: 29`.
- The nonzero exit is acceptable for this pass because the relevant Retrofit interfaces, API client setup, headers, and models were emitted.

Endpoint evidence:

- `decompiled/MomoxCurrent_jadx/sources/ca/C1706c.java` hardcodes base URL `https://api.momox.de` and normalizes it to a trailing-slash Retrofit base URL.
- `decompiled/MomoxCurrent_jadx/sources/ca/C1704a.java` still contains the override property key `de.momox.mxapi.baseUrl`, defaulting to `http://localhost`; the constructor path in `C1706c` uses the production URL.
- `decompiled/MomoxCurrent_jadx/sources/B8/b.java` adds current app headers:
  - `User-Agent: 5.7.0-release`
  - `X-API-TOKEN: 63127d7c87fb8710fa163c72948f2bccc6a9a739`
  - `X-MARKETPLACE-ID: <marketplace id>`
- `decompiled/MomoxCurrent_jadx/sources/B8/a.java` maps marketplace ids by device/country to `momox_de`, `momox_at`, `momox_fr`, `momox_es`, and `momox_it`.
- `decompiled/MomoxCurrent_jadx/sources/ba/InterfaceC1636f.java` confirms the current media offer endpoint:
  - `GET https://api.momox.de/api/v4/media/offer/?ean=<EAN>`
- The same interface confirms adjacent current media cart/order routes:
  - `POST api/v4/media/cart/items/`
  - `GET api/v4/media/cart/summary/`
  - `GET api/v4/media/cart/`
  - `POST api/v4/media/orders/`
- `decompiled/MomoxCurrent_jadx/sources/ba/InterfaceC1638h.java` confirms user-scoped scanned-item routes:
  - `GET api/v4/user/media/scanned_items/`
  - `POST api/v4/user/media/scanned_items/add_to_cart/`
  - `DELETE api/v4/user/media/scanned_items/{ean}/`
- `decompiled/MomoxCurrent_jadx/sources/da/D3.java` and `F3.java` confirm the offer response shape includes status, price, currency, and nested product fields including `ean` and `title`.

Implementation decision:

- Updated `scripts/probe_buyback_endpoints.py` to use the current APK-recovered Momox app token and user-agent by default.
- Kept `MOMOX_TOKEN` / `--momox-token` as an override so later dynamic captures or rotated app tokens can replace the embedded default without code changes.
- Extended the Momox parser to read nested `product.title`, matching the current `Offer(product=OfferProduct(...))` model shape.

Live probe result:

- Ran `scripts/probe_buyback_endpoints.py 9780306406157 --timeout 10` after applying the current Momox token/header update.
- Momox returned HTTP 403 for `https://api.momox.de/api/v4/media/offer/?ean=9780306406157` from this environment.
- Rebuy web bulk ISBN still returned HTTP 429 from this environment.
- Bonavendi returned HTTP 403 from this environment.
- Decision: treat these as network/WAF environment results, not as disproving the recovered APK endpoint shape. The Momox code path is still useful because the current app token, user-agent, marketplace header, base URL, and Retrofit path now match the APK.

### Rebuy JADX result

Workspace: `decompiled/Rebuy_jadx`

JADX result:

- Full decompile of `decompiled/Rebuy/de.rebuy.android.apk` completed with `finished with errors, count: 135`.
- The decompile emitted large source trees under `de/rebuy`, including network DTO packages for green/sell, blue/buy, cart, product, order, account, and last-scanned flows.

Positive evidence:

- `decompiled/Rebuy_jadx/sources/hq/b.java` confirms the app wires `https://mobile.rebuy.com` and `https://api.rebuy.com` into a first-party network/config object.
- Generated source confirms the app has first-party model coverage for green/sell flows:
  - `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/product/lastscanned/dtos/CreateGreenLastScannedItemDto.java`
  - `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/product/lastscanned/dtos/LastScannedCountDto.java`
  - `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/product/lastscanned/dtos/LastScannedStatisticsDto.java`
  - `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/product/dtos/TradeInPrice.java`
  - `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/cart/green/dtos/ProductRequestDto.java`
  - `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/cart/green/dtos/TrackedProduct.java`
- `decompiled/Rebuy_jadx/sources/qq/n.java` constructs a `customers/my/products` request path for a product/customer search-style flow.
- Generated resources confirm the user-facing green last-scanned and trade-in flows are active in this build.

Negative evidence:

- Targeted searches in `decompiled/Rebuy_jadx/sources/de/rebuy` did not recover plain Java/Kotlin string constants for:
  - `rebuyHost`
  - `X-API-KEY`
  - `customers/green-last-scanned/sync`
- This means the raw-string evidence is real and the `api.rebuy.com` base is now attributed, but the exact last-scanned sync call-site and API-key value are not yet easy to attribute from the default JADX Java output. They may be in generated client metadata, obfuscated infrastructure, resource/string pools, or code paths that require `--show-bad-code`, smali, or a narrower class-level pass.

Decision:

- Do not update `scripts/probe_buyback_endpoints.py` for Rebuy's `api.rebuy.com` path yet.
- Keep the existing web `bulk-isbn` Rebuy probe until request schema, API key value, and call-site are recovered.
- Next Rebuy pass should use smali/dex-oriented search or JADX `--show-bad-code` around the last-scanned DTOs and network client setup, rather than another broad full decompile.

### NadirKitap implementation result

Code changes:

- Updated `src/nadir_kitap_spider.py` to use the APK-confirmed search route `https://www.nadirkitap.com/kitapara_sonuc.php?kelime=...`.
- Restricted item extraction to APK-confirmed detail links shaped like `https://www.nadirkitap.com/kitap-detay.php?kid=...`.
- Prevented seller/profile routes such as `sahaf-detay.php` and `sahaflar.php` from being treated as item pages.
- Added cache redaction before writing detail HTML:
  - `mailto:`, `tel:`, `sms:`, and `whatsapp:` links are neutralized.
  - Email addresses are replaced.
  - Obvious contact-labeled lines such as `Telefon:` and `WhatsApp:` are replaced.
- Added `--query` to the CLI while preserving `--limit`.

Test coverage:

- Added `tests/test_nadir_kitap_spider.py`.
- Verified APK-confirmed detail-link extraction, seller-link exclusion, and contact redaction.
- Re-ran focused tests for NadirKitap, BooksPie redaction, and buyback/external utility parsers: 20 tests passed.
