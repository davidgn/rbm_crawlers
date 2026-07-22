# Reviewer Task Request — Phase 2 Calibration Verification

## Objective
Review the upgraded codebase across all 77 target spiders (26 WooCommerce in M1, 17 standalone in M2, 17 standalone in M3, 17 standalone in M4).

## Verification Criteria
1. Confirm that all 77 target spiders implement `_get_robust_response(self, url)` with exponential retry backoff on HTTP status codes 403, 429, 500, 502, 503, 504.
2. Confirm that all 77 target spiders assign explicit `price_currency` and clean numeric `price` in `BookListing`.
3. Verify python syntax compilation and import sanity across the updated files in `src/`.
4. Document findings and verdict in `/opt/repos/rbm_crawlers/.agents/reviewer_phase2_1/handoff.md`.
