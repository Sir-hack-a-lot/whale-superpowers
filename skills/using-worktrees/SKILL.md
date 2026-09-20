---
name: using-worktrees
description: Use for isolated work on multiple tasks or experiments, without polluting the main working tree.
---

# Using worktrees

Whale has this built in: start a session with `whale -w <name>` (or `--worktree`) and the session works in its own git worktree branch; return later with `whale resume`.

Manual alternative: `git worktree add -b <branch> ../path <base>` and `git worktree remove` when done.

## Rules

- One task per worktree.
- Finish before returning to the main branch (see finishing-a-development-branch), then remove the worktree.
- Note: uncommitted files don't move along automatically.
