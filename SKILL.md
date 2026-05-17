---
name: stock-playbook-review
description: Review stocks using Nikolaj's 5-gate stock playbook, portfolio-fit rules, ownership-plan rules, and monthly DCA dry-powder framework. Use when evaluating a stock, updating an existing review, comparing candidates, generating a new review file, or deciding hold/add/trim/exit actions inside the stock-playbook repo.
---

# Stock Playbook Review

Use this skill when Nikolaj wants stock work done inside the `stock-playbook/` system.

## Default workflow

1. Identify whether the task is:
   - a new stock review
   - an update to an existing review
   - a portfolio-fit / ownership-plan decision
   - a rankings update

2. Apply the 5-gate framework:
   - Gate 1 — No-BS Rule
   - Gate 2 — Rule of 40
   - Gate 3 — Moat Test
   - Gate 4 — CEO Filter
   - Gate 5 — Valuation

3. Do not stop at “good company”.
   The review must also cover:
   - portfolio fit
   - position sizing
   - hold / add / trim / exit logic
   - bear / base / bull stock-price cases

4. Keep the repo structure consistent.

Read these references when needed:
- `references/playbook-summary.md`
- `references/review-templates.md`
- `references/repo-rules.md`

## Repo rules

- Store reviews under:
  - `reviews/<Company Name>/<N>-of-5-gates-passed>/`
- Keep `RANKINGS.md` updated after new or changed reviews.
- Reviews should include current stock price plus bear / base / bull intrinsic-value stock-price cases.
- Default to commit + push after meaningful review updates, not local-only drift.

## DCA / dry-powder rule

Default monthly capital rule:
- if no current holding is 10% or more below its 52-week high, deploy only 50% of the month’s new capital
- keep the other 50% as dry powder
- if a holding is 10% or more below its 52-week high and the thesis is intact, deploy harder using saved dry powder
- do not average down into broken theses

## Resources

### `references/playbook-summary.md`
Core framework and decision rules.

### `references/review-templates.md`
Stock review and portfolio review template structure.

### `references/repo-rules.md`
Repo layout, rankings rule, and file-generation guidance.

### `scripts/create_review.sh`
Convenience wrapper for generating a new review skeleton in the right repo folder.
