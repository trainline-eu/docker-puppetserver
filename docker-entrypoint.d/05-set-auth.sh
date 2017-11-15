#!/usr/bin/env bash

case "$AUTH_TYPE" in
  "ca_only")
    echo "-> Enabling 'ca_only' auth.conf configuration"
    cp /etc/puppetlabs/puppetserver/conf.d/auth.conf.ca /etc/puppetlabs/puppetserver/conf.d/auth.conf
    ;;
  "server_only" )
    echo "-> Enabling 'server_only' auth.conf configuration"
    cp /etc/puppetlabs/puppetserver/conf.d/auth.conf.server /etc/puppetlabs/puppetserver/conf.d/auth.conf
    ;;
  *)
    echo "-> Keeping default auth.conf configuration"
  ;;
esac

# Cleanup unused files
rm -f /etc/puppetlabs/puppetserver/conf.d/auth.conf.*
