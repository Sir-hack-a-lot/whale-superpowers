---
name: subagent-driven-development
description: Use for delegating well-bounded subtasks to subagents via spawn_subagent, with a contract and parent-side verification.
---

# Subagent-driven development

## When

- The subtask is self-contained and bounded (own files/tests).
- The parent wants to keep its own context small while offloading reading/searching.

## Contract per subagent

Include in the task: goal, exact files, context the subagent CANNOT see (everything you already know must be included), definition of done, and the tools it needs (tools allowlist; omit for role defaults).

Roles: explore (investigation), research (research), review (code review), or a named agent from .whale/agents.

## Rules

- The parent owns the final result: read and verify the output before presenting it.
- Don't spawn to redo work you already did — a subagent starts without your context and would have to re-derive everything.
- One subagent per question; for parallel fan-out see dispatching-parallel-agents.
- Only delegate writable/high-risk work when the runtime provides an isolated writable worker.
