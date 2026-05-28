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
