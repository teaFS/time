#!/bin/sh

cd privat
find -s . -name "*.*" -type f -exec shasum -a 224 "{}" \; | \
sed -E 's/([A-z0-9]*)[[:space:]]*\.\/(.*)$/\2 \1/g'

exit 0

