# Rebuy APK Endpoint Findings: 2026-06-02

## Situational awareness refresh

- Current branch head during this continuation pass: `87153231 docs: archive APK endpoint findings and Bulgaria spider`.
- The branch has moved beyond the earlier APK implementation commit `cc9d7dbc Apply APK endpoint findings`.
- Current worktree delta during this continuation was limited to APK inventory documentation plus the Naiin discovery scaffold.
- Recent APK notes for 2026-05-31 and 2026-06-01 do not supersede the Rebuy gap; they repeat that Rebuy has `https://api.rebuy.com`, `https://mobile.rebuy.com`, `X-API-KEY`, bearer auth formatting, and `customers/my/products`, but no isolated API key value.

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
6. After confirming from `jadx --help` that this local JADX build supports `--single-class`, attempted bounded single-class decompiles for:
   - `xy.j`
   - `ux.x`
   - `wz.b`
7. The first single-class attempts were directed at the full APK and stalled during APK loading/startup before target class files were emitted.
8. Retried the same target classes directly against `decompiled/Rebuy/base_unzip/classes2.dex` with `--no-res --show-bad-code --single-class`.
9. The DEX-only retry succeeded and emitted:
   - `/tmp/rebuy_single_class_jadx_dex/xy_j.java` (`2,719` lines)
   - `/tmp/rebuy_single_class_jadx_dex/ux_x.java` (`7,629` lines)
   - `/tmp/rebuy_single_class_jadx_dex/wz_b.java` (`196` lines)
10. Attempted to install `apktool` as a supplemental smali path. `apt-cache` showed an `apktool` package candidate, but both `sudo apt-get install -y apktool` and direct `apt-get install -y apktool` were blocked by lack of interactive sudo/root privileges in this environment. The practical fallback remained JADX plus raw DEX/class-targeted output.

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

## DEX-only single-class route attribution

The successful DEX-only single-class pass moved several Rebuy leads from string-only evidence to method/path/body evidence.

The local HTTP method enum is `decompiled/Rebuy_jadx/sources/n00/c0.java`:

- `c0.b` = `GET`
- `c0.c` = `POST`
- `c0.d` = `PUT`
- `c0.e` = `DELETE`

Recovered `xy.j` sell/last-scanned methods:

| Class method | HTTP | Route | Request evidence | Response evidence |
| :--- | :--- | :--- | :--- | :--- |
| `xy.j.a(q40.b, ...)` | `PUT` | `/v3/green/carts/{cartId}/add-all-last-scanned-items` | no extra query parameters in this overload | `GreenCart` |
| `xy.j.b(q40.b, int, int, ...)` | `PUT` | `/v3/green/carts/{cartId}/add-all-last-scanned-items` | query params `upPricingPercentage` and `isBasketPricing` | `GreenCart` |
| `xy.j.c(ArrayList, ...)` | `PUT` | `/customers/green-last-scanned` | list body typed as `CreateGreenLastScannedItemDto` | `LastScannedCountDto` |
| `xy.j.d(List, ...)` | `DELETE` | `/customers/green-last-scanned` | list body typed as `CreateGreenLastScannedItemDto` or equivalent product-id deletion payload | `LastScannedStatisticsDto`/operation result path in decompiled coroutine output |
| `xy.j.e(boolean, int, ...)` | `GET` | `/customers/green-last-scanned` | query params `deletableCandidates` and `page_size` | `ProductSearchResult` |
| `xy.j.f(String, ...)` | `GET` | dynamic URL string passed by caller | direct URL string; likely product/search URL | `ProductSearchResult` |
| `xy.j.g(...)` | `GET` | `/customers/green-last-scanned/statistics` | no body | `LastScannedStatisticsDto` |
| `xy.j.h(ArrayList, ...)` | `PUT` | `/customers/green-last-scanned/sync` | list body typed as `CreateGreenLastScannedItemDto` | sync/result wrapper |

Recovered `ux.x` customer/search methods:

- `ux.x.f(String username, String password, ...)` issues `POST /customers/oauth/token` with form fields `username` and `password`, and parses `Oauth2AccessToken`.
- `ux.x.u(String url, ...)` issues `GET` against a caller-supplied URL and parses `ProductSearchResult`.
- `decompiled/Rebuy_jadx/sources/qq/n.java` builds the caller-supplied product URL for `ux.x.u(...)` as `customers/my/products`, applies `SearchRequest` query parameters, and adds `max_items=150`.

Decision: this is enough to describe the internal app flow, but still not enough to ship a live Rebuy API probe. The missing pieces are the app API key value, whether these routes accept anonymous traffic, and the exact product search query parameter names for ISBN/EAN searches after `SearchRequest` serialization.

## Decisions

- Do not update `scripts/probe_buyback_endpoints.py` to use `https://api.rebuy.com` yet.
- Keep using the current web endpoint `https://www.rebuy.de/verkaufen/api/bulk-isbn` for Rebuy live probing until the first-party API key and exact unauthenticated/authenticated request schemas are recovered.
- Treat `customers/my/products` as the confirmed app-side product discovery route, but not yet as a confirmed ISBN quote endpoint.
- Treat `/customers/green-last-scanned/sync` and `/add-all-last-scanned-items` as authenticated app sell-flow routes that probably require bearer auth and/or the still-unrecovered app API key.
- The best next Rebuy step is not more default JADX. Use one of:
  - inspect `SearchRequest` serialization and `qq.n.h(...)` query construction to recover exact product-search query keys;
  - recover the `X-API-KEY` value from header/interceptor construction;
  - dynamic capture from the app if an emulator/session is available.

## Current conclusion

This pass improved Rebuy route attribution substantially but did not recover enough to ship a new Rebuy API adapter. The static evidence now supports a more precise next target: recover `SearchRequest` query serialization and the app API key/header injector, then make a bounded, non-committed live probe against `https://api.rebuy.com/customers/my/products` only if the auth material is legitimately recovered.
