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
