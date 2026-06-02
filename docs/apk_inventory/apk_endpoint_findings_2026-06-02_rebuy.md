# Rebuy APK Endpoint Findings: 2026-06-02

## Situational awareness refresh

- Current branch head during this pass: `470240b1 Implement Global Expansion Fleet (Phase 4)`.
- The branch has moved beyond the earlier APK implementation commit `cc9d7dbc Apply APK endpoint findings`.
- The worktree remains intentionally dirty with unrelated crawl/cache/data output under `src/cache/**`, `src/data/**`, and several untracked expansion artifacts. Those files were not used as edit targets in this pass.
- Newer untracked APK notes exist for 2026-05-31 and 2026-06-01. They do not supersede the Rebuy gap; they repeat that Rebuy has `https://api.rebuy.com`, `https://mobile.rebuy.com`, `X-API-KEY`, bearer auth formatting, and `customers/my/products`, but no isolated API key value.

## Why more Rebuy work was still justified

The previous Rebuy result had enough static evidence to prove that the Android app uses a first-party API base, but not enough to build or ship a new probe:

- `decompiled/Rebuy_jadx/sources/hq/b.java` wires `https://api.rebuy.com` and `https://mobile.rebuy.com`.
- `decompiled/Rebuy_jadx/sources/qq/n.java` builds a request path for `customers/my/products`.
- The default JADX output exposes green/sell DTOs and last-scanned DTOs, but several network methods remain hidden behind `UnsupportedOperationException("Method not decompiled: ...")`.
- The exact `X-API-KEY` value was still not isolated in plain Java/Kotlin output.

Because of that, the next useful step was a DEX/string-oriented pass rather than another broad source read.

## Actions taken

1. Re-read current git/log status and current APK notes.
2. Re-ran focused source searches for Rebuy hosts, auth/header strings, last-scanned routes, green-cart routes, DTOs, and the known `customers/my/products` path.
3. Started a separate `decompiled/Rebuy_jadx_badcode` workspace with `jadx --show-bad-code` against `decompiled/Rebuy/de.rebuy.android.apk`.
4. Stopped relying on the bad-code pass for immediate findings because it progressed too slowly through the full Rebuy class set before the target classes were emitted.
5. Used raw DEX string extraction from:
   - `decompiled/Rebuy/base_unzip/classes.dex`
   - `decompiled/Rebuy/base_unzip/classes2.dex`

## Recovered route and auth inventory

The DEX string pass recovered the following literals relevant to Rebuy's sell/buyback and cart flows:

- Hosts:
  - `https://api.rebuy.com`
  - `https://mobile.rebuy.com`
- Auth/header strings:
  - `X-API-KEY`
  - `Authorization`
  - `Bearer `
  - `Bearer %s`
- Customer/product routes:
  - `/customers/`
  - `/customers/my/products`
  - `/customers/my/selling-opportunities`
  - `/customers/green-last-scanned`
  - `/customers/green-last-scanned/statistics`
  - `/customers/green-last-scanned/sync`
  - `/customers/oauth/`
  - `/customers/oauth/token`
- Green-cart/sell routes:
  - `/green/carts`
  - `/v2/green/carts/`
  - `/v3/green/carts`
  - `/v3/green/carts/`
  - `/add-all-last-scanned-items`
- Product routes:
  - `/products`
  - `/products/`
  - `/products/bulk`
- Blue-cart/buy routes, lower priority for buyback:
  - `/blue/carts/`
  - `/v1/blue/cart/item/`
  - `/v2/blue/carts/`
  - `/v3/blue/carts/`

## DTO and payload evidence

The current decompiled Java output gives useful payload field names even where the method bodies are incomplete:

- `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/cart/green/dtos/ProductRequestDto.java`
  - Serializes a single `id` field.
- `decompiled/Rebuy_jadx/sources/de/rebuy/shared/network/cart/green/dtos/OrderProductDto.java`
  - Serializer fields:
    - `product`
    - `price`
    - `basePrice`
    - `customerGrading`
    - `previousPrice`
    - `id`
    - `productCategoryGroup`
    - `couponValue`
    - `searchUuid`
    - `flag`
- `decompiled/Rebuy_jadx/sources/jt/z.java`
  - Builds `OrderProductDto(new ProductRequestDto(product.f11659h), ...)` after grading-price calculation.
  - This strongly suggests the green-cart sell flow posts product IDs, not raw ISBN/EAN values, after an earlier product lookup/search phase.
- `decompiled/Rebuy_jadx/sources/iv/a.java`
  - Converts product IDs into `CreateGreenLastScannedItemDto` and calls `xy.j.d(...)`.
  - This links last-scanned sync work to the `xy.j` network implementation, but default JADX still hides the exact method body.

## Decisions

- Do not update `scripts/probe_buyback_endpoints.py` to use `https://api.rebuy.com` yet.
- Keep using the current web endpoint `https://www.rebuy.de/verkaufen/api/bulk-isbn` for Rebuy live probing until the first-party API key and exact unauthenticated/authenticated request schemas are recovered.
- Treat `customers/my/products` and `/products/bulk` as product discovery leads, not confirmed ISBN quote endpoints.
- Treat `/customers/green-last-scanned/sync` and `/add-all-last-scanned-items` as authenticated app sell-flow leads that probably require bearer auth and/or the still-unrecovered app API key.
- The best next Rebuy step is not more default JADX. Use one of:
  - install/use `baksmali` or `apktool` to inspect only the `xy.j`, `ux.x`, `wz.b`, and related networking methods;
  - run JADX with a narrower class include/exclude setup if available;
  - dynamic capture from the app if an emulator/session is available.

## Current conclusion

This pass improved Rebuy route attribution substantially but did not recover enough to ship a new Rebuy API adapter. The static evidence now supports a more precise next target: disassemble or dynamically trace `xy.j` methods around the last-scanned and green-cart routes, then map `ProductRequestDto` and `OrderProductDto` to concrete request bodies.
