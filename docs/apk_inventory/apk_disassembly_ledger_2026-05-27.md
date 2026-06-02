# APK Disassembly Ledger: `apks.tar.xz`

Date: 2026-05-27

Archive: `/home/davidgn/Downloads/apks.tar.xz` (deleted after successful full extraction on 2026-05-28)

Inventory source: `docs/apk_inventory/apks_tar_xz_inventory_2026-05-27.csv`

## Status

- Total archive entries inventoried: 47.
- Archive size noted during audit: approximately 2.1G.
- Current ledger state: inventory complete, archive fully extracted locally, archive-wide disassembly not yet complete.
- Full local extraction: `/home/davidgn/active_repos/rbm_crawlers/apk_work/full_extract` (ignored workspace, 3.5G on disk as of 2026-05-28).
- Default status for entries not named below: `not_checked`.

## Priority 1: Book-First / Known Blocked Targets

| Artifact | Status | Reason |
| :--- | :--- | :--- |
| `BookChor - Online Bookstore_14.10_APKPure.xapk` | `partially_disassembled` | India book-first target; unpacked workspace exists at `decompiled/BookChor`; first endpoint pass found `www.bookchor.com` deep-link/web routes and Firebase/Razorpay non-inventory endpoints. |
| `BookLal - Buy_Sell Used Books_3.3.1_APKPure.xapk` | `partially_disassembled` | India used-book app; unpacked workspace exists at `decompiled/BookLal`; first endpoint pass found Firebase Realtime Database/storage plus Bitactro integrity endpoints, but no clean public inventory REST API. |
| `BookLane - Buy-Sell Used Books_3.1.2_APKPure.xapk` | `partially_disassembled` | India used-book app; unpacked workspace exists at `decompiled/BookLane`; first endpoint pass found Flutter/Firebase storage evidence for `old-book-seller-f1250`; existing repo intelligence also has live `https://booklaneapp.com/api` listing endpoints. |
| `BookMamu+-+Used_New+Books_2.2.8_apkcombo.com.xapk` | `partially_disassembled` | India book-first target; unpacked workspace exists at `decompiled/BookMamu`; APK confirms `https://prodbookmamuapi.azurewebsites.net/api/` and static app bearer-token access used by the existing spider. |
| `BooksPie - Online Bookstore_5.1_APKPure.xapk` | `partially_disassembled` | India book-first target; unpacked workspace exists at `decompiled/BooksPie`; APK confirms `https://api.bookspie.com/api/` old-book/category endpoints used by the existing spider. |
| `Pustak+Market_15.0.22_apkcombo.com.xapk` | `partially_disassembled` | India book-first target; unpacked workspace exists at `decompiled/PustakMarket`; first endpoint pass found `https://www.pustakmarket.com`, stale/non-resolving `https://new.pustakmarket.com`, and Firebase storage evidence, but no app REST API string yet. |
| `Duozhuayu_3.1.5_APKPure.xapk` | `partially_disassembled` | China recommerce/books target; unpacked workspace exists at `decompiled/Duozhuayu`; first endpoint string pass found Netease/customer-service infrastructure but no clean first-party inventory API string. |
| `孔夫子旧书网_8.3.1_APKPure.apk` | `not_disassembled` | China used-book target; web detail pages are partially blocked/minimal. |
| `闲鱼_7.26.20_APKPure.apk` | `not_disassembled` | China horizontal marketplace; useful where web access is constrained. |
| `换享_3.0.6_APKPure.apk` | `not_disassembled` | Book/used-goods candidate from archive classification. |
| `Kitabu_1.1.1_APKPure.xapk` | `partially_disassembled` | Uzbekistan book-first target; unpacked workspace exists at `decompiled/Kitabu`; first endpoint pass found live public API base `https://api.kitabu.uz` and unauthenticated post/list/detail endpoints. |

## Priority 2: Recommerce / Buyback Operators

| Artifact | Status | Reason |
| :--- | :--- | :--- |
| `momox - Sell books, CD's, DVD's, games_3.7.5_APKPure.apk` | `partially_disassembled` | Directly relevant to Momox buyback endpoint token/header research; current unpacked/JADX workspace found `https://api.momox.de` and `media_offer?ean={ean}`. |
| `momox_ sell books & fashion_5.7.0-release_APKPure.apk` | `jadx_disassembled` | Current Momox app variant; JADX workspace `decompiled/MomoxCurrent_jadx` recovered `https://api.momox.de`, current app token/user-agent headers, marketplace-id logic, `GET api/v4/media/offer/?ean=...`, media cart/order routes, and scanned-item user routes. |
| `rebuy - Kaufen & Verkaufen_2026.05.5297_APKPure.xapk` | `jadx_single_class_route_attribution` | Directly relevant to Rebuy buyback endpoint shape/rate-limit research; JADX workspace `decompiled/Rebuy_jadx` attributed the `https://api.rebuy.com` base and emitted green/sell DTOs and last-scanned models. A 2026-06-02 raw DEX string pass recovered route leads, then a DEX-only JADX `--single-class` pass against `classes2.dex` attributed `xy.j` and `ux.x` methods: `GET /customers/green-last-scanned`, `GET /customers/green-last-scanned/statistics`, `PUT /customers/green-last-scanned/sync`, `PUT /v3/green/carts/{cartId}/add-all-last-scanned-items`, `POST /customers/oauth/token`, and caller-built `GET customers/my/products` product search. The `X-API-KEY` value, anonymous/auth requirements, and final ISBN/EAN query shape remain unattributed. |
| `Medimops App_1.1.0_APKPure.xapk` | `partially_disassembled` | Momox retail/recommerce adjacent; unpacked workspace exists at `decompiled/Medimops`; first raw string pass looks thin/retail-oriented with no clear inventory/buyback API constants. |
| `wer-zahlt-mehr-3-1-0.apk` | `not_disassembled` | Buyback comparison target. |
| `NadirKitap_5.5.84_APKPure.xapk` | `jadx_disassembled_implemented` | Turkey book marketplace/recommerce target; unpacked workspace exists at `decompiled/NadirKitap`; JADX plus raw strings confirmed `kitapara_sonuc.php?kelime=` and `kitap-detay.php?kid=` routes, now reflected in `src/nadir_kitap_spider.py` with contact redaction. |
| `PangoBooks_ Buy & Sell Books_3.0.7_APKPure.xapk` | `partially_disassembled` | US book marketplace app; unpacked workspace exists at `decompiled/PangoBooks`; base APK React Native bundle confirms PangoBooks infrastructure including Elastic Cloud host, Firebase, Supabase, and Cloud Functions traces. |

## Priority 3: Regional Horizontal Marketplaces

| Artifact family | Status | Reason |
| :--- | :--- | :--- |
| `Jiji *` regional APK/XAPK files | `not_disassembled` | Regional marketplace APIs may cover weak web surfaces in Africa/South Asia. |
| `Bikroy - Everything Sells_6.1.0.0_APKPure.xapk` | `not_disassembled` | Bangladesh marketplace app/API candidate. |
| `Tonaton - Buy & Sell_2.0.0_APKPure.apk` | `not_disassembled` | Ghana marketplace app/API candidate. |
| `Tokopedia*` | `not_disassembled` | Indonesia marketplace API candidate. |
| `MercadoLivre / MercadoLibre / Mercador` files | `not_disassembled` | Latin America marketplace app/API candidates. |
| `OLX/Slando/Allegro/Vinted/Avito` family files | `not_disassembled` | Horizontal marketplace app/API candidates; lower book specificity. |

## Next Execution Step

Create one disassembly workspace per remaining priority-1 and priority-2 artifact from `apk_work/full_extract`, record package id/version, run bounded endpoint string extraction, and append endpoint findings here before moving to broad priority-3 marketplaces. Start with current Momox, Rebuy, Medimops, NadirKitap, PangoBooks, Kongfz, Xianyu, and Huanxiang because those are now locally available without paying the compressed-tar seek cost again.
