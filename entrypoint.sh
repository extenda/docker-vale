#!/bin/sh
set -e

/valelint/vale --config /valelint/.vale.ini --glob="!styles/*" "$@"
