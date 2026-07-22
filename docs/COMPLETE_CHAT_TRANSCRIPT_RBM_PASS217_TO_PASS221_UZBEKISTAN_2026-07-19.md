# COMPLETE CHAT TRANSCRIPT — RBM pass217 to pass221 Uzbekistan (2026-07-19)

## User Request:
`resume`

## Assistant Actions:
1. Resumed RBM workflow. Located the `rbm_crawlers` repository in `/opt/repos/rbm_crawlers`.
2. Verified live CSV row counts directly via python pandas:
   - Registry: 2345 (noting 106-row discrepancy from pass 217 handoff docs due to pass 218-220 changes)
   - Compile: 2254
   - Summaries: 202
   - Revisit Queue: 221
   - Sources: 2581
   - Evidence: 2140
3. Checked git commit logs and found that the repository was actively updated up to Pass 220 (including Albania, Moldova, El Salvador, Indonesia sweep, Côte d'Ivoire, and Morocco).
4. Inspected the revisit queue and found two open Uzbekistan items:
   - Dedupe hold on Kitob/Kytab (open_no_promotion_pass92)
   - Active inventory/in-app flow proof for Kitabu (open_hardened_pass91)
5. Executed web searches and verified:
   - Kitabu.uz is an active used-book exchange/sale platform with mobile app and website.
   - Kytab.uz (Al-ilm) is a digital library/store only, with no P2P used-book marketplace mechanics.
6. Executed a custom script utilizing python playwright to dump the body and extract links from `https://kitabu.uz/library`. Confirmed active used-book listings and transactions (SELL, FREE, TEMPORARILY/LOAN).
7. Created the `sync_uzbekistan_pass221.py` script to update and synchronize the CSV data files:
   - Added `Kitobxon.com` (online bookstore/e-library) and `Mehr Kutubxonasi` (free community public library/book sharing project) to registry, compile, sources, and evidence files.
   - Synced the compile and summaries datasets to bring them in perfect alignment with the registry for Uzbekistan.
   - Updated the statuses of rows 206 and 207 in the revisit queue CSV to `resolved_pass220_active_spiders_built`.
8. Executed the sync script, achieving final row counts:
   - Registry: 2347
   - Compile: 2263
   - Summaries: 202
   - Revisit Queue: 221
   - Sources: 2583
   - Evidence: 2142
9. Ran `pytest` suite and confirmed all 161 tests pass.
10. Packaged the entire terminal state into a flat checkpoint ZIP: `rbm_checkpoint_handoff_FLAT_ROOT_2026-07-19_post_pass221_uzbekistan_v1.zip`.
