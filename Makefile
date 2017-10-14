.PHONY: all install install-py install-js install-rb test test-py test-js test-rb
export PATH := .:$(PATH)

all: list

list:
	@grep '^\.PHONY' Makefile | cut -d' ' -f2- | tr ' ' '\n'

install:
	make install-py
	make install-js
	make install-rb
	make install-php

install-py:
	pip install packspec
	pip install tableschema
	pip install datapackage

install-js:
	npm install packspec
	npm install tableschema
	npm install datapackage

install-rb:
	gem install packspec
	gem install tableschema
	gem install datapackage

test:
	make test-py
	make test-js
	make test-rb
	make test-php

test-py:
	packspec-py tests

test-js:
	node_modules/.bin/packspec-js tests

test-rb:
	packspec-rb tests
