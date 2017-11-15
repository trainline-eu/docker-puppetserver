#!/usr/bin/env bash

echo "-> Fixing permissions"
chown -R puppet:puppet /etc/puppetlabs/puppet
chown puppet:puppet /etc/puppetlabs/code/environments
