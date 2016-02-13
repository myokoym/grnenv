# grnenv [![Build Status](https://secure.travis-ci.org/myokoym/grnenv.png?branch=master)](http://travis-ci.org/myokoym/grnenv)

Make Groonga build easy. Inspired by [rbenv](https://github.com/rbenv/rbenv).

## Usage

```
$ git clone https://github.com/myokoym/grnenv ~/.grnenv
$ export GRNENV_HOME=~/.grnenv
$ export PATH=$GRNENV_HOME/bin:$PATH
$ export PATH=$GRNENV_HOME/shims:$PATH
$ grnenv build 5.1.2  # Specify Groonga version
$ grnenv global 5.1.2
$ grnenv rehash
$ groonga version
```
