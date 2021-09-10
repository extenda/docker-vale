#!/bin/bash
set -e

DEFAULT_ARGS="--config /valelint/.vale.ini --glob=!styles/*"                                                       

ARGS="$DEFAULT_ARGS $*"

exec /valelint/vale $ARGS