# Whale Superpowers

A port of the [Superpowers](https://github.com/obra/superpowers) skill bundle for Claude Code to **[Whale](https://github.com/usewhale/whale)** — the DeepSeek-native terminal coding agent — plus Whale-specific additions the original doesn't have.

The bundle turns vague requests into disciplined workflows: brainstorm before building, write bite-sized plans before coding, test-first implementation, root-cause debugging, code review, verification before "done", and clean branch hygiene. Every skill is a plain `SKILL.md` file — readable, hackable, no runtime code.

## Skills

| Skill | Use when |
|---|---|
| `superpowers` | Start of every task — master index; decides which skills apply |
| `brainstorming` | "Build X", new feature, vague wishes → turn intent into a design |
| `writing-plans` | Spec is settled; write an implementation plan before touching code |
| `executing-plans` | An approved plan needs task-by-task execution |
| `subagent-driven-development` | Delegate bounded subtasks via `spawn_subagent` |
| `dispatching-parallel-agents` | Independent questions fan out in parallel (`parallel_reason`) |
| `test-driven-development` | Every code change: failing test first, commit per cycle |
| `systematic-debugging` | Any bug: find the root cause before fixing |
| `requesting-code-review` | Ask for review before wrapping up |
| `receiving-code-review` | Process review feedback systematically |
| `verification-before-completion` | Prove it works before saying "done" |
| `finishing-a-development-branch` | Merge/PR/cleanup when a branch is finished |
| `using-worktrees` | Isolated work via `whale -w` or git worktrees |
| `writing-skills` | Write your own SKILL.md skills |
| `diagnosing-superpowers` | When a skill won't load or misbehaves |
| `handoff` | Hand work to another session/provider/machine (Whale-exclusive) |

## Install

```bash
git clone https://github.com/Sir-hack-a-lot/whale-superpowers.git
cd whale-superpowers
./install.sh          # copies skills into ~/.whale/skills
# or: ./install.sh --link   # symlinks instead (updates via git pull)
```

Restart your Whale session afterwards (skill discovery happens at session start).

## Usage

Nothing to invoke. The `superpowers` index skill instructs the agent to check for applicable skills before every action — say "build a favorites page" and brainstorming kicks in; say "fix the login bug" and systematic-debugging runs. You can also name a skill explicitly: "do this test-driven".

## Adaptation notes

Superpowers concepts, translated to Whale tools:

| Superpowers | Whale |
|---|---|
| `Task` (subagents) | `spawn_subagent` (roles: explore/research/review, or named agents in `.whale/agents`) |
| `TodoWrite` | `update_plan` / `todo_add` |
| `ExitPlanMode` | Plan mode: write the plan as the final reply; the UI owns approval |
| `AskUserQuestion` | `request_user_input` |
| Memory | `remember` / `recall_memory` |

## Whale-exclusive extras

- `handoff` — write a `HANDOFF.md`, commit a clean checkpoint, and hand the session to another provider or machine (e.g. around token limits or provider switches).
- Project-specific skills follow the same pattern; see `writing-skills` (keep those local, e.g. in your repo's `.whale/skills/`).

## License & attribution

MIT. This bundle is a port and extension of [obra/superpowers](https://github.com/obra/superpowers) — Copyright (c) 2025 Jesse Vincent, MIT — adapted for Whale's tooling, with original content added.
