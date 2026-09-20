---
name: superpowers
description: Master index of the Whale Superpowers bundle. Load at the start of every task to decide which skills apply, and whenever unsure which skill to use.
---

# Superpowers (Whale edition)

A port of the Claude Code "Superpowers" plugin (obra/superpowers) to Whale, plus Whale-specific additions.

## The rule

If there is even a 1% chance a skill applies, you MUST load it with `load_skill("name")` BEFORE answering or doing anything — including clarifying questions, exploration, or reading files. Announce: "Using [skill] to [purpose]". If the skill turns out not to fit, don't use it — but the check comes first.

When several skills apply, process skills first (brainstorming, systematic-debugging), then execution skills.

Priority: user instructions (CLAUDE.md, memory, direct requests) > skills > default behavior.

## Index

| Skill | Load when |
|---|---|
| brainstorming | "Build X", new feature, vague wishes → turn intent into a design |
| writing-plans | Spec is settled; write a plan before touching code |
| executing-plans | An approved plan needs task-by-task execution |
| subagent-driven-development | Delegate bounded subtasks via spawn_subagent |
| dispatching-parallel-agents | Independent questions fan out in parallel (parallel_reason) |
| test-driven-development | Any code change: failing test first |
| systematic-debugging | Any bug: root cause before fix |
| requesting-code-review | Ask for review before wrapping up |
| receiving-code-review | Process review feedback |
| verification-before-completion | Prove it works before saying "done" |
| finishing-a-development-branch | Merge/PR/cleanup of a finished branch |
| using-worktrees | Isolated work (whale -w / git worktrees) |
| writing-skills | Writing your own SKILL.md skills |
| diagnosing-superpowers | When a skill won't load or misbehaves |
| handoff | Hand work to another session/provider/machine |

In the TUI: open the skills menu to see what the runtime discovered. Skills created mid-session are usually discovered after a restart.

## Whale translation of Superpowers concepts

- Task (subagents) → `spawn_subagent` (roles: explore/research/review, or named agents in .whale/agents)
- TodoWrite → `update_plan` / `todo_add`
- ExitPlanMode → Plan mode: write the plan as the final reply; the UI owns approval
- AskUserQuestion → `request_user_input`
- Memory → `remember` / `recall_memory`
