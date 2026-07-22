# BRIEFING — 2026-07-05T01:52:25-04:00

## Mission
Empirically verify the correctness of the LSE Student Union spider.

## 🔒 My Identity
- Archetype: challenger
- Roles: critic, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/teamwork_preview_challenger_m3_2_gen2
- Original parent: 459739be-96e2-47a0-ab25-fc74785ef42f
- Milestone: Verify LSE Student Union spider
- Instance: 1 of 1

## 🔒 Key Constraints
- Review-only — do NOT modify implementation code.
- Find bugs by writing and executing tests (generators, oracles, stress harnesses).
- Must run verification code ourselves. Do not trust claims/logs.
- If we cannot reproduce a bug empirically, it does not count.

## Current Parent
- Conversation ID: 459739be-96e2-47a0-ab25-fc74785ef42f
- Updated: not yet

## Review Scope
- **Files to review**: src/lse_student_union_spider.py, tests/test_lse_student_union_spider.py
- **Interface contracts**: /opt/repos/rbm_crawlers/.agents/sub_orch_m3/SCOPE.md
- **Review criteria**: selector correctness, robustness under edge html cases, price/currency parsing correctness, argument parsing correctness, syntax/formatting, and unit test pass.

## Attack Surface
- **Hypotheses tested**: [TBD]
- **Vulnerabilities found**: [TBD]
- **Untested angles**: [TBD]

## Loaded Skills
None.

## Key Decisions Made
- Initialized briefing and request files.

## Artifact Index
- /opt/repos/rbm_crawlers/.agents/teamwork_preview_challenger_m3_2_gen2/challenge.md — Review results and bugs.
- /opt/repos/rbm_crawlers/.agents/teamwork_preview_challenger_m3_2_gen2/handoff.md — Handoff report.
