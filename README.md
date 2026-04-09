# Week 2

This repo is now set up as a static SvelteKit site with Tailwind CSS, a VS Code Dev Container, and a GitHub Pages deployment workflow.

## Open In The Dev Container

1. Open the repo in VS Code.
2. Run `Dev Containers: Reopen in Container`.
3. Let the `postCreateCommand` finish installing dependencies.

## Daily Commands

```sh
npm run dev
npm run check
npm run lint
npm run test
npm run build
```

## GitHub Pages

The deploy workflow builds the site with `BASE_PATH` set to the repository name so Pages works for project sites like `https://username.github.io/week-2`.

If you rename the repository later, update the workflow or keep using the dynamic `BASE_PATH` environment value.
