#!/usr/bin/env bash

if [ -n "$PUPPET_CA_ENDPOINT" ] ; then
  echo "-> Configuring ca_server endpoint"
  # Configure puppetserver to use external CA as source of truth requests to puppetca instance
  puppet config set ca_server ${PUPPET_CA_ENDPOINT} --section master

  # Disable local CA
  sed -i -e 's@^\(puppetlabs.services.ca.certificate-authority-service/certificate-authority-service\)@# \1@' -e 's@.*\(puppetlabs.services.ca.certificate-authority-disabled-service/certificate-authority-disabled-service\)@\1@' /etc/puppetlabs/puppetserver/services.d/ca.cfg
else
  echo "-> Skipping external puppet_ca configuration, keeping internal one enabled"
  echo "-> Enabling autosign"
  puppet config set autosign true --section master
fi
