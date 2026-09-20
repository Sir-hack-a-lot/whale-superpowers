---
name: verification-before-completion
description: Use at the end of every task before reporting "done". Prove with output that it works.
---

# Verify before "done"

## Checklist (all applicable items)

- Tests/builds actually run and green? Paste the core of the output.
- git diff reviewed: no debug code, no stray prints/logs, no accidentally changed files?
- Does the behavior work end-to-end (not just the unit test)?
- Error paths tried (empty input, missing permissions)?
- Placeholder scan: no TODO/TBD left behind?

## Rule

No claim without evidence. "It should work" is not verification. If verification can't be completed within the task: report that explicitly as an open risk.
