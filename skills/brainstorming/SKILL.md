---
name: brainstorming
description: Use for any new idea, feature request, or vague assignment ("build X", "I want Y") before planning or coding. Turns intent into a grounded design through targeted questions and research.
---

# Brainstorming

Goal: from a vague idea to a design the user stands behind, before any plan or code.

## Workflow

1. **Establish intent** — Restate in your own words what the user wants and why. First explore on your own (Read/LS/Grep) whatever you can discover; ask only what you can't know yourself. Ask at most 1-3 focused questions at a time via `request_user_input`, with options where possible (the UI adds "None of the above").
2. **Research** — Inspect relevant code, configs, and existing patterns. Ground the design in reality, not assumptions.
3. **Present the design** — Concisely: choices, trade-offs, open decision points. Use `request_user_input` for real forks, not details.
4. **Confirm** — Rework the design on feedback until the user agrees, then move to writing-plans.

## Rules

- No code or file changes while brainstorming.
- Short, focused questions; don't interview.
- Don't end with "shall I start?" — in Plan mode the UI owns approval.
