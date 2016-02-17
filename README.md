# grnenv [![Build Status](https://secure.travis-ci.org/myokoym/grnenv.png?branch=master)](http://travis-ci.org/myokoym/grnenv)

Make Groonga build easy. Inspired by [rbenv](https://github.com/rbenv/rbenv).

## Requirements

* Bash
* Autotools

## Install

```
$ git clone https://github.com/myokoym/grnenv ~/.grnenv
$ export GRNENV_HOME=~/.grnenv
$ export PATH=$GRNENV_HOME/bin:$GRNENV_HOME/shims:$PATH
```

## Usage

### Build

```
$ grnenv build 5.1.2  # Specify Groonga version
```

### Switch version

#### Global

```
$ grnenv global 5.1.2
$ groonga --version  # 5.1.2
$ cd ..
$ groonga --version  # 5.1.2
```

#### Only current directory

```
$ grnenv local 1.0.0
$ cat .groonga-version
1.0.0
$ groonga --version  # 1.0.0
$ cd ..
$ groonga --version  # 5.1.2
```

### Export paths

The following command exports the current version's paths to `LD_LIBRARY_PATH` and `PKG_CONFIG_PATH`.

```
$ eval $(grnenv export)
```

### Plugin

#### Install

```
$ grnenv plugin-install https://github.com/myokoym/groonga-plugin-default_encoding
```

#### Uninstall

```
$ grnenv plugin-uninstall groonga-plugin-default_encoding
```
