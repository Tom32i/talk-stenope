.SILENT:
.PHONY: build

default: install build

## Install dependencies
install:
	npm install

## Start watcher
watch:
	npx webpack --watch --mode=development

## Build
build:
	npx webpack --mode=production

## Serve
serve:
	php -S 0.0.0.0:8000 -t ./build
