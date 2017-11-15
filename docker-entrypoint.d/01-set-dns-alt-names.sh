#!/usr/bin/env bash

if [ -n "$DNS_ALT_NAMES" ]; then
  echo "-> Configuring dns_alt_names"
  puppet config set dns_alt_names ${DNS_ALT_NAMES} --section main
else
  echo "-> Skipping dns_alt_names configuration"
fi
