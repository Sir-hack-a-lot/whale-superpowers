---
name: requesting-code-review
description: Use before wrapping up non-trivial changes: request a review via a review subagent.
---

# Requesting code review

1. **Build the review package**: branch/commit range, summary of what and why, list of changed files (git diff --stat), test results, and 2-4 focused questions/attention points.
2. **Engage the reviewer**: `spawn_subagent` with role=review (or a named review agent), with the package as context — the reviewer cannot see your session.
3. **Process the feedback**: handle every remark (fix it or refute it with arguments); see receiving-code-review.

## Review focus

Correctness, regressions, test coverage, security, readability, and whether the change respects its scope.
