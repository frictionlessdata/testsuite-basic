.PHONY: all install install-py install-js install-rb test test-py test-js test-rb
export PATH := ./node_modules/.bin:$(PATH)


LEAD := $(shell head -n 1 LEAD.md)


all: list

list:
	@grep '^\.PHONY' Makefile | cut -d' ' -f2- | tr ' ' '\n'

install:
	make install-py
	make install-js
	make install-rb

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

readme:
	pip install md-toc
	md_toc -p README.md github --header-levels 3
	sed -i '/(#testsuite-basic)/,+1d' README.md

templates:
	sed -i -E "s/@(\w*)/@$(LEAD)/" .github/issue_template.md
	sed -i -E "s/@(\w*)/@$(LEAD)/" .github/pull_request_template.md

test:
	make test-py
	make test-js
	make test-rb

test-py:
	packspec-py tests

test-js:
	npx packspec-js tests

test-rb:
	packspec-rb tests
