---
name: executing-plans
description: Use when an approved plan must be executed. Drives execution task by task with a checklist, verification, and commits.
---

# Executing plans

1. **Create the checklist** — `update_plan` with every task from the plan as a step (pending).
2. **One task at a time** — set the active task to in_progress and do only that. No running ahead.
3. **Per task**: test first (TDD), then minimal implementation, then run the test, then commit. Follow the task steps exactly.
4. **Verify per task** — tests green, diff reviewed, no loose ends.
5. **Commit per task** — clear message referencing the task.
6. **Finish** — checklist to completed; end with evidence (test output), not a claim. See verification-before-completion.

If reality diverges from the plan: stop and consult the user instead of silently changing scope.
