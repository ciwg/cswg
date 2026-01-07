# Repository Guidelines

## Project Structure & Module Organization
- `content/` holds Markdown pages and posts with YAML front matter (`---`) like `title`, `date`, `linktitle`, and tags.
- `layouts/` and `themes/hugo-book/` define templates, shortcodes, and theme overrides.
- `static/` stores assets copied as-is; `data/` holds structured data; `archetypes/` stores Hugo templates.
- `config.toml` contains site-wide configuration and theme settings.
- `public/` and `resources/` are generated outputs (GitHub Pages + Hugo cache); avoid manual edits.

## Build, Test, and Development Commands
- `hugo server`: run the local dev server at `http://localhost:1313` with live reload.
- `make build`: generate the site into `public/`.
- `make clean`: recreate `public/` from the `gh-pages` branch before publishing.
- `make graphs`: regenerate diagrams in `content/docs/change/` and `static/docs/roadmap/` (needs `dot` and related tools).
- `make ship` / `make upstream`: publish to `gh-pages` (maintainers).

## Coding Style & Naming Conventions
- Write content in Markdown and keep YAML front matter minimal and consistent.
- Use kebab-case for content filenames, e.g. `content/posts/git-and-github-collaboration.md`.
- Prefer spaces over tabs; keep lists and headings clean and scannable.

## Testing Guidelines
- No automated test suite today. Validate with `hugo server` and a clean `make build`.
- If you change diagrams, run `make graphs` and confirm generated `.svg`/`.pdf` outputs.

## Commit & Pull Request Guidelines
- Commit messages are short, imperative, sentence case (e.g., "Fix typo in pull request instructions").
- Include issue references like `Fix #23` in the commit message or PR description to auto-close issues.
- Branch names follow `NN_short_description` (e.g., `23_fix_typo_in_index`).
- PRs should describe the change, link the issue, and mention manual checks (pages reviewed, commands run).
