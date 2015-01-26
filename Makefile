BROWSERIFY ?= ./node_modules/.bin/browserify
UGLIFY ?= ./node_modules/.bin/uglifyjs

all: dist/elliptic4.js dist/elliptic4.min.js

dist/elliptic4.js: lib/elliptic.js
	$(BROWSERIFY) --standalone ellipticjs4 $< -o $@

dist/elliptic4.min.js: dist/elliptic4.js
	$(UGLIFY) --compress --mangle < $< > $@

.PHONY: all
