---
name: test-driven-development
description: Use for all code changes: a failing test first, then minimal implementation, then refactor, with a commit per cycle.
---

# Test-Driven Development

## Cycle (strict)

1. **RED** — Write the test that captures the new behavior first. Run it; confirm it fails for the right reason (not a typo).
2. **GREEN** — Write the minimal implementation that makes the test pass. Nothing more.
3. **REFACTOR** — Clean up without changing behavior; tests stay green.
4. **Commit** — After each cycle, with a message describing the behavior.

## Django projects

`.venv/bin/python manage.py test <module>` — check project-specific skills for local rules.

## Pitfalls

- Skipping a test "because it's trivial" → don't; the test documents the intent.
- Implementation before the test → the test only confirms your assumption afterwards.
- Multiple behaviors in one cycle → split them up.
