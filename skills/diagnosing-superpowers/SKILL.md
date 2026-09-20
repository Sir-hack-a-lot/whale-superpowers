---
name: diagnosing-superpowers
description: Use when a skill won't load, isn't found, or the bundle behaves oddly.
---

# Diagnosing Superpowers

1. **Does the skill exist?** Check the skill root: `~/.whale/skills/<name>/SKILL.md` (user) or `.whale/skills/` in the workspace.
2. **Frontmatter correct?** `name` without underscores/capitals; `description` present.
3. **Discovery** happens at session start — skills created mid-session usually load only after a restart. Test: `load_skill("name")`. "skill not found" while the file exists = restart the session.
4. **TUI**: open the skills menu to see what the runtime discovered.
5. If the problem persists: tell the user which skill is missing and continue with the available context; mention the missing skill in the summary only if it affects the result.
