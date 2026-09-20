---
name: writing-skills
description: Use when creating or improving skills (SKILL.md files) for Whale.
---

# Writing skills

## Structure

A skill is a directory containing a SKILL.md:

```
<skill-root>/<skill-name>/SKILL.md
```

with YAML frontmatter: `name` (alphanumeric plus hyphens; no double or edge hyphens, no underscores) and a `description` stating WHEN the skill applies (the trigger), not just what it does.

Body: short and procedural — rules, steps, checklists, pitfalls. No prose.

## Rules

- The name describes the action (brainstorming, writing-plans, ...).
- The description decides whether the agent loads it: name the trigger situation explicitly.
- Reference other skills by name (loaded via load_skill).
- Skills are instructions for the agent; they don't execute scripts.
- New skills: test first (load_skill), then update the superpowers index.
