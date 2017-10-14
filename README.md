# testsuite-basic

[![Python](https://img.shields.io/travis/frictionlessdata/testsuite-basic/python.svg?label=Python)](https://travis-ci.org/frictionlessdata/testsuite-basic/branches)
[![JavaScript](https://img.shields.io/travis/frictionlessdata/testsuite-basic/javascript.svg?label=JavaScript)](https://travis-ci.org/frictionlessdata/testsuite-basic/branches)
[![Ruby](https://img.shields.io/travis/frictionlessdata/testsuite-basic/ruby.svg?label=Ruby)](https://travis-ci.org/frictionlessdata/testsuite-basic/branches)

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
