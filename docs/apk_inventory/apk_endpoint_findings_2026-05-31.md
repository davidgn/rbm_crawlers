# APK Endpoint Findings: 2026-05-31

Resuming disassembly of priority targets from `apks_tar_xz_inventory_2026-05-27.csv`.

## 1. Werzahltmehr (DACH)
- **Artifact**: `wer-zahlt-mehr-3-1-0.apk`
- **Type**: Cordova / Ionic (Web-based)
- **Findings**:
  - Base API URL: `https://www.werzahltmehr.de/mapi/`
  - API Key: `f3fc7cf047ccb45239a8642d2391813d`
  - Quote Endpoint: `https://www.werzahltmehr.de/mapi/getResults/{apiKey}/{ean}`
  - Note: Live `curl` probe returned 404/Nuxt error, suggesting this legacy API might be retired in favor of the current WebSocket implementation (`messagebroker.werzahltmehr.de`).
  - Current WebSocket Auth Token (from web trace): `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwibmFtZSI6IndlYnNpdGUiLCJpYXQiOjE1MTYyMzkwMjJ9.iJLujt5Dar6I07yarE_nuKZ_5akzZplOsTMGLs1q0Qc`

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
- **Findings**: Extreme obfuscation. Uses Huawei GRS (`grs.dbankcloud.com`) for routing. Web endpoints (`www.kongfz.com`) confirmed but mobile API remains opaque.

## 5. Huanxiang (China)
- **Artifact**: `换享_3.0.6_APKPure.apk`
- **Findings**: Protected by 360 Jiagu (`libjiagu.so`). Static analysis blocked.

## Next Steps:
- Verify `Rebuy` mobile API key via dynamic analysis if possible.
- Consolidate findings into the main adapter library (`buyback-operators/src/adapters`).
- Probe remaining Priority 3 APKs for quick wins.
