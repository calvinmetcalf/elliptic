BROWSERIFY ?= ./node_modules/.bin/browserify
UGLIFY ?= ./node_modules/.bin/uglifyjs

all: dist/elliptic2.js dist/elliptic2.min.js

dist/elliptic2.js: lib/elliptic.js
	$(BROWSERIFY) --standalone ellipticjs2 $< -o $@

dist/elliptic2.min.js: dist/elliptic2.js
	$(UGLIFY) --compress --mangle < $< > $@

.PHONY: all
