# READ FIRST — Technical observations and decisions, RBM post-pass217 terminal handoff

## File-backed authority

The pass217 CSVs are the live file-backed state. Older pass ZIPs in `/mnt/data` are superseded by this terminal handoff unless the user explicitly requests historical comparison or rollback.

## Terminal packaging decisions

- The terminal handoff was built by unpacking `rbm_checkpoint_handoff_FLAT_ROOT_2026-05-06_post_pass217_russia_vFINAL.zip` and copying its non-ZIP files into a new flat handoff directory.
- No nested ZIPs were included.
- Older pass ZIPs were not included because their contents are superseded by the pass217 CSVs and would create redundant nested/large archive risk.
- Fresh terminal continuity docs, a fuller capsule history, artifact indices, a direct row-count validation, a visible transcript, a resume prompt, and new SHA256 manifests were added.

## Classification governance decisions preserved

- **Strict/main** requires book-specific recommerce/marketplace mechanics, preferably third-party seller/listing flow, seller profiles or direct seller contact, or managed marketplace infrastructure.
- Broad marketplaces/classifieds/auction sites remain horizontal controls even with deep book inventory.
- Social media groups stay social resale unless there is a standalone platform boundary.
- Single-store used-book shops, anticuarios, bukinist stores, buyback/trade-in surfaces, consignment intake, donations, and bookcrossing remain operator/context/circularity lanes unless open marketplace mechanics are verified.
- Regional spillover services are not promoted as country-native strict/main unless territory-specific platform operation is clearly verified.
- ISBN capture is opportunistic but standing: record explicit values when visible; record capability separately when only search-by-ISBN or metadata support is visible.

## Pass-specific technical notes from the prepend campaign

- Venezuela closed as dense used-book texture / no strict-main: strong operator, classifieds, social, and exchange surfaces; Libros.ccs remains weak-fit/operator buy/sell/exchange, not verified open marketplace.
- Hong Kong found and hardened BookDaddy as the sole current strict/main candidate; ReBooked, Lemon, My Bookroom, and other secondhand/textbook stores remain operator layers; EasysBook remains historical/currently unverified.
- Philippines promoted Chapters as the sole current strict/main candidate with direct seller/pre-loved marketplace caveats.
- Egypt closed as dense used-book texture / no strict-main: Azbakeya/operator/offline market, dubizzle/4Swapp horizontal, Facebook social, and operator bookstores.
- Romania closed as dense anticariat/operator ecosystem / no strict-main; Okazii remains horizontal; Romanian detail pages exposed ISBN fields.
- Indonesia promoted Bukubekas.id as strict/main; Preloved.co.id remains weak-fit general secondhand marketplace; Jualo/Aksiku examples exposed ISBNs.
- Malaysia closed as rich operator/social/horizontal texture / no strict-main; Bookurve FAQ blocked open-seller interpretation; Bookaholics Hub exposes ISBN search capability.
- Ukraine retained a strong strict/main set: Bookstock, Liberbee, Bukinist.in.ua, and BOOKMARKET.IN.UA, with auction/operator controls kept out.
- Russia campaign opened and saturated to eight strict/main surfaces: Alib.ru, LibeX, RusBuk, Books.ru user selling, Moiknigi, Booksharing.app, LiveLib book exchange, and Ofeni.ru.

## Known caveats

- Several final assistant messages cited public webpages; the live CSV/evidence ledger should be inspected for the exact encoded rows and notes.
- Managed checkout/payment is not verified for several P2P/direct-contact strict candidates; preserve those caveats.
- Pass204 Romania recon reply did not render in chat, but pass205 used and verified the pass204 ZIP as parent. The live terminal state supersedes that UI gap.
- The complete transcript included here is the visible/best-available transcript for this chat segment. It does not include hidden chain-of-thought or raw tool outputs.
