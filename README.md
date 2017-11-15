# docker-puppetserver

[![PULLS](https://img.shields.io/docker/pulls/trainlineeurope/r10k.svg)](https://hub.docker.com/r/trainlineeurope/puppetserver)
[![BUILD](https://img.shields.io/travis/trainline-eu/docker-puppetserver/master.svg)](https://travis-ci.org/trainline-eu/docker-puppetserver)

This repo contains the `Docker` image definition for `puppetserver`.

## Usage

```bash

~$ docker run -d -p 8140:8140 trainlineeurope/puppetserver

```

## Environment variables

- `PUPPET_SERVER_JAVA_ARGS` | *optional* - modify the java heap size (default: "-Xms512m -Xmx512m")
- `PUPPET_DB_ENDPOINT` | *optional* - configure a puppetdb endpoint to send reports (default: *undef*)
- `PUPPET_CA_ENDPOINT` | *optional* - configure a puppetca to send certificate requests to and disable the internal one (default: *undef*)
- `DNS_ALT_NAMES` | *optional* - configure additionnal fqdn for this puppetserver instance (default: *undef*)
- `CERTNAME` | *optional* - specify the certaname for this puppetserver instance (default: *container hostname*)
- `AUTH_TYPE` | *optional* - define the authorized actions on the puppetserver
