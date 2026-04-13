#!/usr/bin/env bash

set -euo pipefail

export BUNDLE_PATH="${BUNDLE_PATH:-vendor/bundle}"

bundle check || bundle install
bundle exec jekyll serve -P 8000 --livereload
