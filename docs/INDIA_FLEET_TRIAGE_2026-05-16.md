# India Fleet Triage (2026-05-16)

This document outlines the final state of the ~30 outstanding Indian marketplaces identified in the "India Backlog."

## Successfully Implemented Web Crawlers
The following platforms have been successfully implemented and bypass all protections. They use a tiered spider architecture (WooCommerce API, Shopify API, or HTML Search) and are verified working.

- **Kitabwalah** (WooCommerce API)
- **BookHub** (WooCommerce API)
- **BookMandee** (HTML Search)
- **Clankart** (HTML Search)
- **BooksYa** (WooCommerce API)
- **GraffittiBooks** (WooCommerce API)
- **Apnabook** (Shopify API)
- **Padhaiseekers** (Shopify API)
- **ShelfSwap** (Shopify API)

## Successfully Implemented Mobile API Spiders
These platforms had web-tier blocks or unusable frontends, but their Mobile (Android/iOS) API endpoints were discovered to be unprotected.

- **BookMamu** (Direct Azure/Node API via static JWT)
- **BooksPie** (Direct API `api.bookspie.com`)
- **MyOldBooks** (Direct Firestore Database `selling-app-cc177`)
- **ReuseBooks** (Direct Admin API `admin.reusebooks.in`)

## Dead / Parked Fleet
These domains are no longer functioning as marketplaces. They can be safely excluded from all future extraction attempts.

- `bookloop.in` (Redirect loop / Parked)
- `reread.in` (Redirect loop / Parked)
- `govtjobsindia.net` (NXDOMAIN)
- `booklal.com` (NXDOMAIN)
- `sellmybooks.in` (NXDOMAIN)
- `bookswaphub.com` (NXDOMAIN)
- `resellpanda.com` (NXDOMAIN)
- `pustakstore.com` (HTTP 503)
- `bookbazar.com` (Connection Reset)
- `pustakmart.com` (TLS Internal Error)

## Blocked Fleet (Deferred to App-Tier / Appium)
These three domains actively block automated HTTP requests using advanced WAFs (Cloudflare/Turnstile) that cannot be bypassed via headers, TLS fingerprinting, or Headful Chromium (`xvfb`).

- **BookChor**
- **BookFlow**
- **ReSellBooks**

**Next Steps**: Since standard proxy bypasses failed, we will attempt to extract data for these three platforms using Appium to drive their official Android applications natively.
