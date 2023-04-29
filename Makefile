SHELL := /bin/bash

JS_FILES = extension.js prefs.js

.PHONY: clean all

all: walkpaper.zip

schemas: org.gnome.shell.extensions.walkpaper3.gschema.xml
	mkdir -p schemas
	glib-compile-schemas --strict --targetdir=./schemas/ .

walkpaper.zip: schemas $(JS_FILES)
	zip walkpaper3.zip -r $(JS_FILES) metadata.json org.gnome.shell.extensions.walkpaper3.gschema.xml schemas

clean:
	rm -rf walkpaper3.zip schemas
