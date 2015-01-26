BROWSERIFY ?= ./node_modules/.bin/browserify
UGLIFY ?= ./node_modules/.bin/uglifyjs

all: dist/elliptic3.js dist/elliptic3.min.js

dist/elliptic3.js: lib/elliptic.js
	$(BROWSERIFY) --standalone ellipticjs3 $< -o $@

dist/elliptic3.min.js: dist/elliptic3.js
	$(UGLIFY) --compress --mangle < $< > $@

.PHONY: all
