# APK Endpoint Findings: 2026-05-31

Resuming disassembly of priority targets from `apks_tar_xz_inventory_2026-05-27.csv`.

## 1. Werzahltmehr (DACH)
- **Artifact**: `wer-zahlt-mehr-3-1-0.apk`
- **Type**: Cordova / Ionic (Web-based)
- **Findings**:
  - Base API URL: `https://www.werzahltmehr.de/mapi/`
  - API Key: `f3fc7cf047ccb45239a8642d2391813d`
  - Quote Endpoint: `https://www.werzahltmehr.de/mapi/getResults/{apiKey}/{ean}`
  - Package Endpoint: `POST https://www.werzahltmehr.de/mapi/createPackage/`
  - Package params: `username`, `password`, `apikey`, `identifiers[]`/EAN list, form-url-encoded.
  - Note: Live `curl` probe returned 404/Nuxt error, suggesting this legacy API might be retired in favor of the current WebSocket implementation (`messagebroker.werzahltmehr.de`).
  - Current WebSocket Auth Token (from web trace): `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwibmFtZSI6IndlYnNpdGUiLCJpYXQiOjE1MTYyMzkwMjJ9.iJLujt5Dar6I07yarE_nuKZ_5akzZplOsTMGLs1q0Qc`
  - Source attribution: `decompiled/Werzahltmehr/unzip/assets/www/js/app.js` sets `ApiEndpoint.url`; `decompiled/Werzahltmehr/unzip/assets/www/js/services.js` defines `wzmService.getPrices()` and `wzmService.submitList()`.

## 2. NadirKitap (Turkey)
- **Artifact**: `NadirKitap_5.5.84_APKPure.xapk`
- **Type**: Flutter
- **Findings**:
  - Mobile Base URL: `https://www.nadirkitap.com/nk_mobil/`
  - Search Endpoint: `https://www.nadirkitap.com/kitapara_sonuc.php?kelime={query}` (Web wrapper)
  - Detail Endpoint: `https://www.nadirkitap.com/kitap-detay.php?kid={kid}`
  - Note: Heavily protected by Cloudflare; requires solver or browser emulation.

## 3. Rebuy (DACH)
- **Artifact**: `de.rebuy.android.apk`
- **Type**: Native (Android)
- **Findings**:
  - API Host: `https://api.rebuy.com`
  - Mobile Host: `https://mobile.rebuy.com`
  - Custom Headers: `X-API-KEY`, `Authorization: Bearer %s`
  - Endpoint Lead: `customers/my/products`
  - Note: Heavy obfuscation; `X-API-KEY` value not yet isolated from static strings.

## 4. Kongfuzi (China)
- **Artifact**: `孔夫子旧书网_8.3.1_APKPure.apk`
- **Findings**:
  - Extreme obfuscation; mobile API remains opaque from default raw strings.
  - Uses Huawei GRS assets and route config, but the visible GRS hosts are Huawei metrics/routing infrastructure, not Kongfuzi inventory APIs.
  - Deep-link scheme: `kongfz://app.kongfz.com`.
  - App route leads from bundled assets:
    - `kongfz://app.kongfz.com/addBook/byScan`
    - `kongfz://app.kongfz.com/addBook/bySearch`
    - `kongfz://app.kongfz.com/addBook/byManualInput`
    - `kongfz://app.kongfz.com/addBook/draftBox`
    - `/invokeSearch/app/cate/index`
  - Mobile web/detail leads:
    - `https://app.kongfz.com/conf/privacy.html`
    - `https://m.kongfz.cn/{item_id}` via `recommend_auction.json` web deep links
    - `https://m.kongpm.com/lot/{lot_id}` for auction lots
    - image/user hosts `https://www0.kfzimg.com` and `https://user.kongfz.com`
  - Book-specific static evidence exists in layouts/routes (`shop_isbn`, `scan.search`, `IsbnDetailActivity`, `ScanImageResultActivity`, `addBook/byScan`), but no clean unauthenticated REST search endpoint was recovered.

## 5. Xianyu / IdleFish (China)
- **Artifact**: `闲鱼_7.26.20_APKPure.apk`
- **Type**: Flutter/Alibaba native stack with MTop and H5/Goofish templates.
- **Workspace**: unpacked to ignored local path `decompiled/Xianyu/unzip`.
- **Findings**:
  - Brand/host evidence:
    - `goofish.com`
    - `https://h5.m.goofish.com`
    - `https://api.goofish.com/m/userAvatar.action?...`
    - legacy `2.taobao.com`
    - `http://api.2.taobao.com/api`
    - `http://s.m.taobao.com/search.htm?q=`
    - `https://guide-acs.m.taobao.com/gw/...`
  - Search-result template inventory exists under `assets/template/search_result_list/`, including:
    - `idlefish_search_card_item`
    - `idlefish_search_card_item_waterfall`
    - `idlefish_search_card_auction`
    - `idlefish_search_spu_market_price_trend`
    - `idlefish_search_spu_market_publish`
    - `idlefish_search_spu_market_ranking`
  - Relevant MTop operation leads recovered from DEX/assets:
    - `mtop.taobao.idle.city.item.search`
    - `mtop.taobao.idle.barcode.scan`
    - `mtop.etao.kaka.barcode.search`
    - `mtop.taobao.idle.detail.preget`
    - `mtop.taobao.idle.awesome.detail`
    - `mtop.taobao.idle.awesome.detail.unit`
    - `mtop.taobao.idle.fun.item.detail`
    - `mtop.taobao.idle.fishpool.itemsearch`
    - `mtop.taobao.idle.fishpool.search`
    - `mtop.taobao.idle.category.predict`
    - `mtop.taobao.idle.category.properties.prefetch`
  - Book/barcode evidence:
    - `mtop.taobao.idle.barcode.scan`
    - `mtop.etao.kaka.barcode.search`
    - generic barcode/scan stack strings from Alibaba/Alipay components.
  - Decision: useful endpoint intelligence, but not yet a spider target. Xianyu likely requires signed/authenticated MTop request construction and anti-bot/session material. The next static step is to isolate MTop request builders for `mtop.taobao.idle.city.item.search` and `mtop.taobao.idle.barcode.scan`; the next dynamic step is browser/app capture of a keyword search such as a common book title or ISBN.

## 6. Huanxiang (China)
- **Artifact**: `换享_3.0.6_APKPure.apk`
- **Findings**: Protected by 360 Jiagu (`libjiagu.so`). Static analysis blocked.

## Next Steps:
- Verify `Rebuy` mobile API key via dynamic analysis if possible.
- For WerZahltMehr, treat the Cordova `mapi` routes as historically confirmed but live-retired until the current websocket/backend flow is reproduced.
- For Kongfuzi, use web/mobile URL harvesting first; only return to native API work if smali/JADX class targeting can isolate network request construction.
- For Xianyu, prioritize MTop signing/request-builder attribution before attempting any live probe.
