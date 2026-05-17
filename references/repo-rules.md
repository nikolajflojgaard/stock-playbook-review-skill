# Repo rules

## Canonical repo

- `stock-playbook/`
- GitHub repo: `nikolajflojgaard/stock-playbook`

## Review storage

Store each review under:
- `reviews/<Company Name>/<N>-of-5-gates-passed>/`

## Rankings rule

After new or changed reviews:
- regenerate / update `RANKINGS.md`

## Generation helper

The stock-playbook repo already includes:
- `generate_stock_review.py`

Use it when a new review skeleton helps, but do not let the generated shell replace actual analysis.

## Publish rule

Default to:
- update review
- update rankings if needed
- validate by inspection
- commit
- push
