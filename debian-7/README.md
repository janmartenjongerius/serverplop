# Debian 7 - Wheezy

- [Fresh installation](#fresh-installation)
- [Development](#development)
  - [PHP Developer](#php-developer)
  - [JavaScript Developer](#javascript-developer)
  - [Frontend developer](#frontend-developer)
  - [Perl Developer](#perl-developer)
- [Production](#production)
- [Lamp](#lamp)
- [Additional rules](#additional-rules)

## Fresh installation

Debian being Debian, it comes with a really bare installation.
When you first install a Debian 7 server, it lacks a few things to get serverplop started.

- zip / git

When you want to set up your server for the first time, please install the following:

```bash
$ sudo apt-get install -y zip
```

Or, alternatively you can directly go for the forking method, using:

```bash
$ sudo apt-get install -y git
```

Then you either download the ZIP archive and extract that, or you clone the git repo.

## Development

To simply build a fresh development environment, do the following:

```bash
$ make development
```

Development is a bundle make rule for the following make rules:

- lamp
- locales
- xdebug
- phpunit
- codesniffer (defaults to PSR2 if possible)
- nodejs (which calls `make java8`)
- square

Additionally, there are some specific developer subsets.

### PHP developer

```bash
$ make php-developer
```

Make rules:

- lamp
- locales
- xdebug
- phpunit
- codesniffer
- zend
- webgrind
- doxygen

### JavaScript developer

```bash
$ make js-developer
```

Make rules:

- nodejs
- square

### Frontend developer

```bash
$ make frontend-developer
```

Make rules:

- php-developer
- js-developer

### Perl developer

```bash
$ make perl-developer
```

- essentials
- apache2
- mysql
- perl
- doxygen

## Production

```bash
$ make production
```

Production is a simplified version which leaves out all developer tools.

- lamp
- locales

## LAMP / Webserver

```bash
$ make lamp
```
The lamp make rule is to provide a basic Linux + Apache2 + MySQL + PHP installation. It consists of the following rules:

- essentials
- apache2
- mysql
- php

## Additional rules

- smarty2
- java8
- graphviz
- sphinx-0-22

## Java 8 warning

Running `make java8` will install the Oracle version of Java version 8.
Please note that `make java8` will remove all `openjdk*` packages if you agree or frantically mash return.
