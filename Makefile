ENVIRONMENT ?= "production"

puppetserver:
	/docker-entrypoint.sh puppetserver foreground

r10k:
	r10k deploy environment ${ENVIRONMENT} -p -v

.PHONY: puppetserver r10k
.DEFAULT_GOAL := puppetserver
