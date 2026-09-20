---
name: writing-plans
description: Use when the spec or requirements are settled and an implementation plan is needed for a multi-step task, before touching code.
---

# Writing plans

Write plans as bite-sized tasks (each step 2-5 minutes), TDD-oriented, with frequent commits.

## Structure

Save the plan as `docs/plans/YYYY-MM-DD-<feature>.md` (or a path the user specifies) and present it in Plan mode as the final reply — the UI then asks for approval. Every plan starts with:

```
# Plan: <feature>
- **Goal**: what and why
- **Architecture**: components involved and how they interact
- **Tech stack**: frameworks/tools
- **Spec**: pointer to the requirements source
- **Constraints**: non-negotiable limits
- **Review focus**: what the reviewer should check
```

## Tasks

Each task contains:
- **Files**: exact paths (Create/Modify/Test)
- **Interfaces**: what the task consumes/produces (functions, endpoints, models)
- **Steps** (checkboxes): 1. write failing test → 2. confirm failure → 3. minimal implementation → 4. confirm pass → 5. commit

## Forbidden

- "TBD/TODO/implement later", "add appropriate error handling", "write tests for the above"
- Steps without concrete code; references to undefined types/functions
- Placeholders — every part is written out concretely

## Self-review before handoff

1. Coverage: every spec requirement appears in a task?
2. Placeholder scan: no vague language?
3. Type consistency: all referenced symbols exist or are created in the plan?
4. Review focus correct?

Then: hand off to the user; ask how to execute (subagent-driven or direct) and load the matching skill.
