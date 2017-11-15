#!/usr/bin/env bash

/bin/run-parts --verbose --regex '\.(sh)$' /docker-entrypoint.d

echo "-> Starting.."
exec "$@"
