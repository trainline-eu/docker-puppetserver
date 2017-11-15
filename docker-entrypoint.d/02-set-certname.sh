#!/usr/bin/env bash

if [ -n "$CERTNAME" ]; then
  echo "-> Configuring certname"
  puppet config set certname ${CERTNAME} --section main
else
  echo "-> Skipping certname configuration"
fi
