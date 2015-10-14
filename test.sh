#!/bin/sh

set -e
set -x

busted -p _spec.moon --output=TAP --defer-print
