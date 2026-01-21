
NETWORK=reverseproxy

## network: create docker network if not exists
.PHONY: network
network:
	@echo "▶ Create network"
	@docker network inspect $$NETWORK >/dev/null 2>&1 || docker network create $$NETWORK

## build: build app
.PHONY: build
build:
	@echo "▶ Build app"

## image: create docker image
.PHONY: image
image:
	@echo "▶ Create docker image"

## deploy: deploy app on vm
.PHONY: deploy
deploy:
	@echo "▶ Deploy app"

