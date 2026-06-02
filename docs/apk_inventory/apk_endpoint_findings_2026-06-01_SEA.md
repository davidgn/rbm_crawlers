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

## 4. Others (In Queue)
- **Meb (Thailand)**: Native (Priority 1)
- **SE-ED (Thailand)**: Native (Priority 1)
- **Carousell (SG/MY)**: Flutter/Native (Priority 1)
- **Popular (Malaysia)**: Native (Priority 1)

## Strategic Decision:
- **Naiin** is the most promising target for immediate spider implementation due to the clear `app-api.naiin.com` trace.
- **Tokopedia** requires a GraphQL-aware probe to handle its `gql.tokopedia.com` endpoint.
- **Carousell** is the priority for used-book C2C signals.

Next Steps:
- Map `app-api.naiin.com` search parameters via dynamic interception if needed.
- Create a baseline spider for `Naiin.com` retail site to compare MSRPs against global buyback.
