# BRIEFING — 2026-07-04T21:02:30Z

## Mission
Salvage and upgrade UPenn, KCL, LSE, Columbia, UChicago spiders to use Playwright/headless browsers, bypassing 403 blocks and extracting >=1 BookListing.

## 🔒 My Identity
- Archetype: Project Orchestrator
- Roles: orchestrator, user_liaison, human_reporter, successor
- Working directory: /opt/repos/rbm_crawlers/.agents/orchestrator_phase4
- Original parent: parent
- Original parent conversation ID: 1094055c-b062-44bc-89dd-a6e61c747fbb

## 🔒 My Workflow
- **Pattern**: Project Pattern
- **Scope document**: /opt/repos/rbm_crawlers/PROJECT.md
1. **Decompose**: Decomposed the task into 6 milestones: M1 (UPenn), M2 (KCL), M3 (LSE), M4 (Columbia), M5 (UChicago), M6 (Final Verification & Audit).
2. **Dispatch & Execute**:
   - **Delegate (sub-orchestrator)**: Spawn a sub-orchestrator using the `self` archetype for each milestone to manage the Explorer -> Worker -> Reviewer -> Challenger -> Auditor iteration loop.
3. **On failure** (in this order):
   - Retry: nudge stuck agent or re-send task
   - Replace: spawn fresh agent with partial progress
   - Skip: proceed without (only if non-critical)
   - Redistribute: split stuck agent's remaining work
   - Redesign: re-partition decomposition
   - Escalate: report to parent (sub-orchestrators only, last resort)
4. **Succession**: Self-succeed at 16 spawns.
- **Work items**:
  1. Initialize Workspace & Plan [done]
  2. M1: UPenn Bookstore Used Spider [in-progress]
  3. M2: KCL Student Union Spider [in-progress]
  4. M3: LSE Student Union Spider [in-progress]
  5. M4: Columbia Bookstore Spider [pending]
  6. M5: UChicago Bookstore Spider [pending]
  7. M6: Final Verification & Audit [pending]
- **Current phase**: 2
- **Current focus**: Parallel execution of M1, M2, M3 sub-orchestrators

## 🔒 Key Constraints
- NEVER write, modify, or create source code files directly. Delegate ALL work to subagents via invoke_subagent.
- NEVER run build/test commands yourself — require workers to do so.
- MAY use file-editing tools ONLY for metadata/state files (.md) in .agents/ folder.
- Never reuse a subagent after it has delivered its handoff — always spawn fresh

## Current Parent
- Conversation ID: 1094055c-b062-44bc-89dd-a6e61c747fbb
- Updated: 2026-07-04T21:01:54-04:00

## Key Decisions Made
- Decomposed the salvage and migration tasks into 6 milestones (5 university spiders + final E2E verification).
- Spanned M1, M2, and M3 sub-orchestrators in parallel.

## Team Roster
| Agent | Type | Work Item | Status | Conv ID |
|-------|------|-----------|--------|---------|
| Sub-orch M1 | self | UPenn Upgrade (Repl) | in-progress | 6da745b0-81d9-40a9-ad25-ee6ba350f488 |
| Sub-orch M2 | self | KCL Upgrade (Repl) | in-progress | 686e2a57-6558-4ae3-ac9e-ec4b22eed648 |
| Sub-orch M3 | self | LSE Upgrade (Repl) | in-progress | 5878326a-5d5c-4dd4-ba30-5eea0b65cf9f |

## Succession Status
- Succession required: no
- Spawn count: 9 / 16
- Pending subagents: 6da745b0-81d9-40a9-ad25-ee6ba350f488, 686e2a57-6558-4ae3-ac9e-ec4b22eed648, 5878326a-5d5c-4dd4-ba30-5eea0b65cf9f
- Predecessor: none
- Successor: not yet spawned

## Active Timers
- Heartbeat cron: task-67
- Safety timer: none
- On succession: kill all timers before spawning successor
- On context truncation: run `manage_task(Action="list")` — re-create if missing

## Artifact Index
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase4/ORIGINAL_REQUEST.md — Original request log
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase4/BRIEFING.md — Persistent memory state
- /opt/repos/rbm_crawlers/PROJECT.md — Architecture & Milestones spec
- /opt/repos/rbm_crawlers/.agents/orchestrator_phase4/progress.md — Progress tracker & heartbeat log
