---
name: dispatching-parallel-agents
description: Use when multiple independent, cheap subquestions can be answered in parallel (comparing, classifying, critiquing, brainstorming) without tools or files.
---

# Dispatching parallel agents

- **parallel_reason**: 2-8 independent model-only subquestions — comparisons, classifications, critique, brainstorming. No tools/files/shell/web.
- **spawn_subagent**: bounded exploration/research/review tasks WITH tools, as a parallel fan-out.
- NOT parallel: work that depends on a previous result — wait, then continue.
- The parent synthesizes and reconciles all results before the final answer.
