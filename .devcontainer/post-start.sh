#!/usr/bin/env bash
set -euo pipefail

git config --global user.name "${GIT_USER_NAME}"
git config --global user.email "${GIT_USER_EMAIL}"
git config --global init.defaultBranch "${GIT_DEFAULT_BRANCH}"
git config --global pull.rebase "${GIT_PULL_REBASE}"
