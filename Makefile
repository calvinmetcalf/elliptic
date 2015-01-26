BROWSERIFY ?= ./node_modules/.bin/browserify
UGLIFY ?= ./node_modules/.bin/uglifyjs

all: dist/elliptic5.js dist/elliptic5.min.js

dist/elliptic5.js: lib/elliptic.js
	$(BROWSERIFY) --standalone ellipticjs5 $< -o $@

dist/elliptic5.min.js: dist/elliptic5.js
	$(UGLIFY) --compress --mangle < $< > $@

.PHONY: all
