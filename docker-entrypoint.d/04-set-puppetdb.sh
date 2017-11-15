#!/usr/bin/env bash

if [ -n "$PUPPET_DB_ENDPOINT" ] ; then
  echo "-> Configuring puppetdb reporting endpoint"

  # Configure endpoint
  cat << EOF > "$(puppet config print confdir)/puppetdb.conf"
[main]
server_urls = ${PUPPET_DB_ENDPOINT}
EOF

  # Enable reports upload
  puppet config set reports store,puppetdb --section master

  # Enable storeconfig
  puppet config set storeconfigs true --section master
  puppet config set storeconfigs_backend puppetdb --section master
  cat << EOF > $(puppet config print route_file)
---
master:
  facts:
    terminus: puppetdb
    cache: yaml
EOF

  chown -R puppet:puppet $(puppet config print confdir)
else
  echo "-> Skipping puppetdb configuration, reporting locally"
fi
