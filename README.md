# My Personal Website

This repository contains the source code for my personal website, built with
[Zola](https://getzola.org).

## Design goals

- Multilingual support (Spanish as default and English)
- Semantic HTML
- SEO-friendly

## Requirements

- [Zola](https://getzola.org)
- [just](https://github.com/casey/just) (task runner)
- [direnv](https://direnv.net) (loads deploy environment variables)
- [djLint](https://djlint.com) (optional, for formatting)

## Development

Using [just](https://github.com/casey/just):

```bash
just serve # local dev server, includes drafts
just build # production build
```

Or directly with Zola:

```bash
zola serve          # drafts excluded
zola serve --drafts # drafts included
zola build
```

## Deployment

Deployment uses `rsync` over SSH, configured via environment variables loaded
with direnv.

1. Copy the example env file and fill in your own values:

   ```bash
   cp .envrc.example .envrc
   direnv allow
   ```

2. Deploy:

   ```bash
   just deploy
   ```

Drafts are never included in `zola build`, so `just deploy` is always safe to
run without accidentally publishing unfinished posts.
