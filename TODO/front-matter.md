# Front Matter Review

## Findings
- `tags` and `categories` are currently set to empty-string lists (e.g., `tags: [""]`), which can generate blank taxonomy terms. Prefer removing the keys or using empty lists like `tags: []` and `categories: []`.
- `linktitle` appears on some posts but is not referenced by the theme/layouts in this repo, so it is optional unless templates are updated to use `.LinkTitle`.

## Taxonomy Recommendations
Keep it simple and consistent:

- Categories (content type): `workshop`, `demo`, `update`, `announcement`, `notes`
- Tags (topics/tools): `storm`, `grid`, `collaboration`, `git`, `github`, `vscode`, `liveshare`, `hugo`, `ai`, `workflow`

Optional simplification:
- Use only categories (`workshop`, `update`) and drop tags entirely, or
- Use tags only and remove categories.
