#!/usr/bin/env bash
set -e

curl -fsSL https://bun.sh/install | bash
export PATH="$HOME/.bun/bin:$PATH"

bun run build --watch
yarn build:css --watch
