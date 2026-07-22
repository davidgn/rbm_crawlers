# BRIEFING — 2026-06-29T13:03:25Z

## Mission
Build dedicated C2C marketplace spiders for Bosnia (olx.ba), Montenegro (patuljak.me, oglasi.me/trgovac.me), and Macao (kongfz adapter or local C2C), strictly adhering to robust architecture.

## 🔒 My Identity
- Archetype: Project Orchestrator
- Roles: orchestrator, user_liaison, human_reporter, successor
- Working directory: /opt/repos/rbm_crawlers/.agents/orchestrator_phase3
- Original parent: Sentinel
- Original parent conversation ID: edfc8b32-dbad-47ab-8c33-f5c449e821e8

## 🔒 My Workflow
- **Pattern**: Project Pattern
- **Scope document**: /opt/repos/rbm_crawlers/.agents/orchestrator_phase3/PROJECT.md
1. **Decompose**: Decompose Phase 3 into 4 milestones: M1 (Bosnia - olx.ba), M2 (Montenegro - patuljak.me & oglasi.me/trgovac.me), M3 (Macao - kongfz adapter/local C2C), M4 (Integration & Verification).
2. **Dispatch & Execute**: For each milestone, execute the iteration cycle (Explorer -> Worker -> Reviewer -> Challenger -> Auditor gate).
3. **On failure**: Retry, Replace, Skip, Redistribute, Redesign, Escalate.
4. **Succession**: Self-succeed at 16 spawns.
- **Work items**:
  1. Initialize Workspace & Plan [done]
  2. M1: Bosnia Spider (olx.ba) [in-progress]
  3. M2: Montenegro Spiders (patuljak.me, oglasi.me/trgovac.me) [pending]
  4. M3: Macao Spider (kongfz adapter / local C2C) [pending]
  5. M4: Final Verification & Sentinel Report [pending]
- **Current phase**: 2
- **Current focus**: M1 Bosnia Verification active (Reviewers, Challengers, Auditor)

## 🔒 Key Constraints
- NEVER write, modify, or create source code files directly. Delegate ALL work to subagents via invoke_subagent.
- NEVER run build/test commands yourself — require workers to do so.
- MAY use file-editing tools ONLY for metadata/state files (.md) in .agents/ folder.
- Adhere strictly to robust architecture (`_get_robust_response`, currency code separation in `BookListing`).

## Current Parent
- Conversation ID: edfc8b32-dbad-47ab-8c33-f5c449e821e8
- Updated: 2026-06-29T12:50:24Z

## Key Decisions Made
- Decomposed Phase 3 into target country/marketplace milestones (M1: Bosnia, M2: Montenegro, M3: Macao, M4: E2E Verification).
- Evaluated M1 Explorer reports (BAM currency code, SSR JSON-LD parsing). Dispatched Worker 1. Worker completed implementation and unit test suite. Dispatched 2 Reviewers, 2 Challengers, and 1 Forensic Auditor for M1 gate validation.

## Team Roster
| Agent | Type | Work Item | Status | Conv ID |
|-------|------|-----------|--------|---------|
| Bosnia Explorer 1 | teamwork_preview_explorer | M1 Analysis | completed | 2e850ca6-c8af-480f-9ac1-0d4658a0ef4b |
| Bosnia Explorer 2 | teamwork_preview_explorer | M1 Robust Analysis | completed | af9ee1b1-2e59-4518-b319-a6c10374184d |
| Bosnia Explorer 3 | teamwork_preview_explorer | M1 Extraction Design | completed | 4c3ceaa8-bab4-4907-8ea1-2e954815338c |
| Bosnia Worker 1 | teamwork_preview_worker | M1 Implementation | completed | e2b3c692-eba5-482c-bd33-fc780d9e2d5a |
| Bosnia Reviewer 1 | teamwork_preview_reviewer | M1 Review | in-progress | 03826f3e-b651-412b-a1c9-c8b28de848f7 |
| Bosnia Reviewer 2 | teamwork_preview_reviewer | M1 Review | in-progress | b2b6ca18-4819-4a47-a92d-cabf70f518d4 |
| Bosnia Challenger 1 | teamwork_preview_challenger | M1 Empirical Test | in-progress | ef294bd1-622e-47dc-b971-c15534b903dd |
| Bosnia Challenger 2 | teamwork_preview_challenger | M1 Stress Test | in-progress | d3486f4e-16d0-4764-9824-b1425a62e9c7 |
| Bosnia Forensic Auditor | teamwork_preview_auditor | M1 Integrity Audit | in-progress | c6eb421a-f28a-4e5f-833a-2f5cf71ddbaf |

## Succession Status
- Succession required: no
- Spawn count: 9 / 16
- Pending subagents: 03826f3e-b651-412b-a1c9-c8b28de848f7, b2b6ca18-4819-4a47-a92d-cabf70f518d4, ef294bd1-622e-47dc-b971-c15534b903dd, d3486f4e-16d0-4764-9824-b1425a62e9c7, c6eb421a-f28a-4e5f-833a-2f5cf71ddbaf
- Predecessor: none
- Successor: not yet spawned

## Active Timers
- Heartbeat cron: task-17
- Safety timer: none

## Artifact Index
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase3/ORIGINAL_REQUEST.md — Original request log
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase3/BRIEFING.md — Persistent memory state
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase3/PROJECT.md — Architecture & Milestones spec
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase3/plan.md — Execution plan
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase3/progress.md — Progress tracker & heartbeat log
