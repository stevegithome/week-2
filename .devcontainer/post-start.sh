#!/usr/bin/env bash
set -euo pipefail

git config --global user.name "${GIT_USER_NAME}"
git config --global user.email "${GIT_USER_EMAIL}"
git config --global init.defaultBranch "${GIT_DEFAULT_BRANCH}"
git config --global pull.rebase "${GIT_PULL_REBASE}"

cd /workspaces/week-2

DEV_PORT=5173
DEV_HOST=0.0.0.0
PID_FILE=/tmp/week-2-vite.pid
LOG_FILE=/tmp/week-2-vite.log
DEV_URL=http://127.0.0.1:${DEV_PORT}

if curl -fsS "${DEV_URL}" >/dev/null 2>&1; then
	echo "Vite dev server already running."
	echo "Open: http://localhost:${DEV_PORT}"
	exit 0
fi

if [[ -f "${PID_FILE}" ]]; then
	rm -f "${PID_FILE}"
fi

echo "Starting Vite dev server on http://localhost:${DEV_PORT} ..."
nohup npm run dev -- --host "${DEV_HOST}" --port "${DEV_PORT}" --configLoader native >"${LOG_FILE}" 2>&1 &
echo $! >"${PID_FILE}"

for _ in $(seq 1 30); do
	if curl -fsS "${DEV_URL}" >/dev/null 2>&1; then
		echo "Website ready: http://localhost:${DEV_PORT}"
		exit 0
	fi

	if ! kill -0 "$(cat "${PID_FILE}")" 2>/dev/null; then
		echo "Vite dev server exited unexpectedly. Check ${LOG_FILE}."
		exit 1
	fi

	sleep 1
done

echo "Vite is still starting. Check ${LOG_FILE}."
echo "Once forwarded, open: http://localhost:${DEV_PORT}"
