#!/usr/bin/env bash
set -euo pipefail

if command -v bundle >/dev/null 2>&1; then
  BUNDLE_BIN="bundle"
elif [ -x /root/gems/bin/bundle ]; then
  BUNDLE_BIN="/root/gems/bin/bundle"
else
  echo "bundle not found in PATH" >&2
  exit 127
fi

RUBY_MAJOR="$(ruby -e 'print RUBY_VERSION.split(".").first')"

if [ "${RUBY_MAJOR}" -ge 3 ]; then
  # Jekyll 3.9 watch mode is not Ruby 3 compatible (pathutil keyword arg issue).
  exec "${BUNDLE_BIN}" exec jekyll serve --no-watch
else
  exec "${BUNDLE_BIN}" exec jekyll liveserve
fi
