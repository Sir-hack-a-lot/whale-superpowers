---
name: systematic-debugging
description: Use for any bug or unexpected failure. Find the root cause before fixing; no symptom-patching or guessing.
---

# Systematic debugging

## Phases

1. **Reproduce** — Can you trigger the failure yourself (test, command, curl)? Document the exact steps and the expected vs. actual outcome. No reproduction, no fix.
2. **Root cause** — Follow the chain from symptom to cause (logs, stack traces, git blame, recent changes). One hypothesis at a time, tested with evidence; reject on data, not feeling. Keep asking: "why does this fail here, and not earlier/elsewhere?"
3. **Fix** — Minimal change that resolves the root cause, plus a regression test capturing the original failure (TDD cycle).
4. **Verify** — Reproduction steps again + the full relevant test suite. Check for collateral damage (read the git diff).

## Rules

- Read code before changing it (Read/Grep before Edit).
- No "fix" whose cause you cannot explain.
- Stuck? Make the repro smaller instead of searching harder.
