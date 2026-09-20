---
name: handoff
description: Use when handing ongoing work to another session, provider, or machine — e.g. letting another CLI take over the session, or working around token limits.
---

# Handoff

## Start of a session

If the user wants to continue existing work: ask for the handoff source and read HANDOFF.md (or the handoff file) first. Verify state with git status/log.

## End of a session (handing off)

1. **Write HANDOFF.md** in the project root with: what is done (with evidence), what remains (concrete, in order), known pitfalls, and the exact next step.
2. **Commit to git** — the working tree must be clean (or deliberately dirty with an explanation).
3. **Short closing message** with: where HANDOFF.md lives, git status, and the recommended start command for the next session (e.g. `<cli> --continue` or `whale resume`).

## Provider switch (one CLI to another)

- Resume the session: `<cli> --continue` / `--resume` — session files are provider-independent; the whole history is replayed.
- Fresh session: use HANDOFF.md as the starting point — cheaper and more robust than replaying a long history.
- In the new session check the status command (Base URL + model); for Whale: `~/.whale/config.toml`.
