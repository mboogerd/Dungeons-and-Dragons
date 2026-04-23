#!/usr/bin/env bash

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
smoke_root="$repo_root/.quartz"
smoke_dir="$smoke_root/smoke"

cleanup() {
  rm -rf "$smoke_dir"
}

trap cleanup EXIT

node_major="$(node -p 'process.versions.node.split(".")[0]')"
if [ "$node_major" -lt 22 ]; then
  echo "Quartz smoke test requires Node 22+; found $(node -v)" >&2
  exit 1
fi

mkdir -p "$smoke_root"
rm -rf "$smoke_dir"

git clone --depth 1 --branch v4 https://github.com/jackyzha0/quartz.git "$smoke_dir"
cp -R "$repo_root/quartz/." "$smoke_dir/"

pushd "$smoke_dir" >/dev/null
npm ci
npx quartz build --directory "$repo_root"

test -f public/index.html
test -f public/Enter-the-Dungeon/index.html
test -f public/static/contentIndex.json

rg -q '>Browse<' public/index.html
rg -q '>Enter the Dungeon<' public/index.html
rg -q '>Vault<' public/Enter-the-Dungeon/index.html
popd >/dev/null

echo "Quartz smoke test passed"
