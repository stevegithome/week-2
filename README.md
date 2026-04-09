# Week 2

This project uses SvelteKit with Tailwind CSS and is designed to be developed inside the included VS Code Dev Container.

## Dev Container

The dev container builds from `.devcontainer/Dockerfile` using `node:24-bookworm`, installs the Git tooling needed for day-to-day work, and runs `npm ci` after the container is created.

To open the project in the container:

1. Open the repository in VS Code.
2. Run `Dev Containers: Reopen in Container`.
3. Wait for the post-create setup to finish.

## Daily Commands

```sh
npm run dev
npm run check
npm run lint
npm run test
npm run build
```

## GitHub Pages Deployment

GitHub Actions deploys the static SvelteKit build from the `main` branch to GitHub Pages.

The workflow builds inside a `node:24-bookworm` Docker container so CI matches the dev container runtime, and it sets `BASE_PATH` to the repository name so project-site URLs work correctly.

For this repository, the site URL is:

`https://stevegithome.github.io/week-2`

If you rename the repository later, the Pages URL and deployed base path will change with it.
