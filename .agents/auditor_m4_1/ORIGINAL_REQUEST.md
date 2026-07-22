## 2026-06-28T21:47:45-04:00
You are auditor_m4_1. Your working directory is `/opt/repos/rbm_crawlers/.agents/auditor_m4_1`.
Your archetype is `teamwork_preview_auditor`.
Read `/opt/repos/rbm_crawlers/PROJECT.md` and `/opt/repos/rbm_crawlers/.agents/ORIGINAL_REQUEST.md`.
Inspect all code changes recorded in `/opt/repos/rbm_crawlers/.agents/worker_m2_1/changes.md` and `/opt/repos/rbm_crawlers/.agents/worker_m3_1/changes.md`.

Objective:
1. Perform forensic integrity verification across all modified files in `src/`.
2. Check for cheating: verify there are NO hardcoded test results, NO dummy facade implementations returning canned data, and NO artificial bypasses.
3. Confirm that all fixes genuinely implement robust web scraping logic, correct CSS selectors, valid constructor signatures, and authentic Playwright subclassing.
4. Write your forensic audit verdict (CLEAN or INTEGRITY VIOLATION) and detailed evidence report to `/opt/repos/rbm_crawlers/.agents/auditor_m4_1/handoff.md`. Update `progress.md` and send a message to parent when finished.
