#!/bin/sh
D_SCRIPT="$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)"
D_COOKIECUTTER="${D_SCRIPT}/../../"

cd "${D_SCRIPT}" || exit 1
cookiecutter --verbose  --no-input \
    --debug-file "debug.log" --output-dir "output" \
    "${D_COOKIECUTTER}"
