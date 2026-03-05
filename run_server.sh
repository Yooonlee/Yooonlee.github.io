#!/usr/bin/env bash
set -euo pipefail

if BUNDLE_PATH="$(ruby -e 'require "rubygems"; print Gem.bin_path("bundler","bundle")' 2>/dev/null)"; then
  BUNDLE_BIN="${BUNDLE_PATH}"
elif command -v bundle >/dev/null 2>&1; then
  BUNDLE_BIN="$(command -v bundle)"
elif [ -x /root/gems/bin/bundle ]; then
  BUNDLE_BIN="/root/gems/bin/bundle"
else
  echo "bundle not found in PATH" >&2
  exit 127
fi

RUBY_MAJOR="$(ruby -e 'print RUBY_VERSION.split(".").first')"

if [ "${RUBY_MAJOR}" -ge 3 ]; then
  # Compatibility shim for Jekyll 3.9/Liquid 4 on Ruby >= 3.2 (taint API removal).
  export RUBYOPT="${RUBYOPT:-} -r./scripts/ruby3_jekyll39_compat"
  # Jekyll 3.9 watch mode is not Ruby 3 compatible (pathutil keyword arg issue).
  exec "${BUNDLE_BIN}" exec jekyll serve --no-watch
else
  exec "${BUNDLE_BIN}" exec jekyll liveserve
fi
