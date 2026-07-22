# Challenger Task Request — Phase 2 Calibration Verification

## Objective
Empirically verify correctness and robustness of the 77 upgraded spiders in `/opt/repos/rbm_crawlers/src/`.

## Verification Tasks
1. Execute AST or runtime verification scripts to confirm `_get_robust_response` presence and status code coverage.
2. Verify that `BookListing` instantiation across all 77 spiders splits `price` and `price_currency` properly.
3. Confirm no regressions or broken imports across the modified codebase.
4. Write report and handoff in `/opt/repos/rbm_crawlers/.agents/challenger_phase2_1/handoff.md`.
