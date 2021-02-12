#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://widget.stackbit.com/init.js 60265d702f4a480016fdbe7b

echo "stackbit-build.sh: finished build"
