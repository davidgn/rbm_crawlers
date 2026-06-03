# SEA APK Endpoint Findings: 2026-06-01

Initiating expansion into the Southeast Asia Hub (Tranche R).

## 1. Naiin (Thailand)
- **Artifact**: `com.amarin.naiin.NaiinReader.apk`
- **Type**: Native (Android)
- **Findings**:
  - API Host Trace: `https://app-api.naiin.com/api/v1/`
  - Auth Callback: `https://app-api.naiin.com/api/v1/auth/callback/apple`
  - Note: Appears to use a versioned REST API.

## 2. Tokopedia (Indonesia)
- **Artifact**: `com.tokopedia.tkpd.apk`
- **Type**: Hybrid (Native + Flutter + Web)
- **Findings**:
  - GraphQL Endpoint: `https://gql.tokopedia.com/graphql/`
  - API Staging: `https://api-staging.tokopedia.com/merchant/toko/`
  - Mobile Deep-links: `tokopedia://webview?url=...`
  - Note: Heavy use of GraphQL for product discovery.

## 3. Gramedia (Indonesia)
- **Artifact**: `com.gramedia.retail.apk`
- **Type**: Native (Android)
- **Findings**:
  - External Tracker: `mobile.useinsider.com`
  - Firebase DB: `https://gramedia-com-1334.firebaseio.com`
  - Note: Primary retail app for Indonesia. API endpoints likely obfuscated or dynamically constructed.

## 4. BookChor (Regional/India)
- **Artifact**: `booksfortune.bookchor.apk`
- **Type**: Flutter
- **Findings**:
  - API Base: `https://apis.bookchor.com/webservices/bookchor.com/bc/`
  - Asset Host: `https://img.bookchor.com/`
  - Note: Logic heavily encapsulated in `libapp.so`. Utilizes Flutter Pigeon for platform channels.

## 5. Periplus (Indonesia)
- **Artifact**: `com.bookindo.periplus.periplus.apk`
- **Type**: Flutter
- **Findings**:
  - API Base: `https://www.periplus.com/api/v4/`
  - Specific Endpoints: `/account/login`, `/address/city`, `/apps-version`
  - Note: Clean REST API structure identified via `libapp.so` strings analysis.

## 6. Meb (Thailand)
- **Artifact**: `com.askmedia.meb.apk`
- **Type**: Native (Protected)
- **Findings**:
  - Firebase DB: `https://mebmarket-8c977.firebaseio.com`
  - Protection: DEX files encrypted/protected (`sealed1-5.dex`).
  - Note: Static analysis blocked by custom checksum/packing logic.

## 7. Kaidee (Thailand)
- **Artifact**: `com.app.dealfish.main.apk`
- **Type**: Hybrid
- **Findings**:
  - Admin/API Host: `https://strapi-admin.prd.kaidee.com/`
  - Static/Assets: `https://ast.kaidee.com/`
  - Note: Likely utilizes Strapi (Headless CMS) for backend management.

## 8. SE-ED (Thailand)
- **Artifact**: `com.digithunworldwide.rff.reeeeder.seed.apk`
- **Type**: Native
- **Findings**:
  - App Engine Host: `se-ed-marketplace.appspot.com`
  - Note: JADX decompilation failure (`IndexOutOfBoundsException` in `ProcessAnonymous`). Heavy reliance on Google Cloud infrastructure.

## 9. Popular (Malaysia)
- **Artifact**: `my.com.popular.memberapp.apk`
- **Type**: React Native
- **Findings**:
  - Storage: `popular-my-de8be.firebasestorage.app`
  - Framework: Identifiable via `N8facebook5react` symbols.
  - Note: Focuses on membership and physical store inventory links.

## 10. Carousell (Regional)
- **Artifact**: `com.thecarousell.Carousell.apk`
- **Type**: Flutter
- **Findings**:
  - Framework: `dev.flutter.pigeon.pgw_sdk`
  - Core Logic: Contained within `libapp.so`.
  - Note: Primary C2C source for used books in SEA. Requires dynamic analysis to bypass Flutter's lack of standard proxy support.

## Strategic Decision:
- **Naiin** and **Periplus** are the primary targets for Tranche R expansion due to clear REST API endpoints (`v1` and `v4` respectively).
- **Tokopedia** and **Carousell** are secondary due to technical complexity (GraphQL and Flutter `libapp.so` obfuscation).
- **Meb** and **SE-ED** are currently de-prioritized due to anti-tamper/decompilation hurdles.

Next Steps:
- Promote `src/naiin_api_spider.py` from compiled discovery scaffold to a real listing spider only after the API category/search/product response schemas are confirmed.
- Implement `periplus_api_spider.py` (REST v4).
- Design a GraphQL probe for `Tokopedia`.

## Continuation Decision: Naiin Scaffold

- Added/kept `src/naiin_api_spider.py` as a discovery scaffold for `https://app-api.naiin.com/api/v1`.
- The scaffold uses the recovered Android-style headers and probes `/categories`.
- It is not yet a production listing spider because it does not emit `BookListing` rows and the search/product endpoint schema still needs confirmation.
- `python3 -m py_compile src/naiin_api_spider.py` passed in this environment.
