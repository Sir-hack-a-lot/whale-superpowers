---
name: finishing-a-development-branch
description: Use when a feature branch is done and must return to the main branch (merge/PR/cleanup).
---

# Finishing a development branch

1. **Run the full suite** (not just the new tests).
2. **Diff review**: go through git log and git diff main...HEAD for oddities.
3. **Clean up**: unused imports, debug leftovers, temporary files.
4. **Commit history**: small, logical commits with clear messages.
5. **Merge/PR** per the project's conventions; for a PR: description with goal + test evidence.
6. **After the merge**: remove the branch, return to main, finish the checklist.
