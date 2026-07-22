# Forensic Auditor Task Request — Phase 2 Calibration

## Objective
Perform forensic integrity verification on all upgraded code in `/opt/repos/rbm_crawlers/src/`.

## Forensic Checks
1. Verify that implementations are authentic — check for hardcoded test results, dummy wrappers, or fake data.
2. Verify that `_get_robust_response` retry loops genuinely compute exponential sleep backoff.
3. Verify that `BookListing` schema assignments genuinely parse prices and ISO currency tokens.
4. Issue a verdict (CLEAN vs INTEGRITY VIOLATION) and record full report in `/opt/repos/rbm_crawlers/.agents/auditor_phase2_1/handoff.md`.
