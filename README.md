# packspec-frictionless-data

[![Python](https://img.shields.io/travis/packspec/packspec-frictionless-data/python.svg?label=Python)](https://travis-ci.org/packspec/packspec-frictionless-data)
[![JavaScript](https://img.shields.io/travis/packspec/packspec-frictionless-data/javascript.svg?label=JavaScript)](https://travis-ci.org/packspec/packspec-frictionless-data)
[![Ruby](https://img.shields.io/travis/packspec/packspec-frictionless-data/ruby.svg?label=Ruby)](https://travis-ci.org/packspec/packspec-frictionless-data)

Testsuite for basic Frictionless Data Implementations.

## Contributing

### Python

Requirements:
- installed `virtualenv` - https://virtualenv.pypa.io/en/stable/installation/

```bash
virtualenv .python -p python3.5
source .python/bin/activate
make install-py
make test-py
```

## JavaScript

Requirements:
- installed `nvm` - https://github.com/creationix/nvm#installation

```bash
nvm install 8
nvm use 8
make install-js
make test-js
```

## Ruby

Requirements:
- installed `rvm` - https://rvm.io/rvm/install

```bash
rvm install 2.4
rvm use 2.4
make install-rb
make test-rb
```
