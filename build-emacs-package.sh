#!/usr/bin/env bash

set -euo pipefail

export PATH=/opt/local/libexec/gnubin:$PATH
export MAKEFILES=mk/server.mk
cd "$(dirname "$0")"
make EMACS="${EMACS:-emacs}" elpaplus archive-contents
ls -ld archive-contents org-plus-contrib*
