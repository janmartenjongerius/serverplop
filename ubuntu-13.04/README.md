# Ubuntu 13.04

[Development](#development)
- [PHP Developer](#php-developer)
- [JavaScript Developer](#javascript-developer)
- [Frontend developer](#frontend-developer)
- [Perl Developer](#perl-developer)

[Production](#production)

[Lamp](#lamp)

[Fixes](#fixes)
- [AMD Watermark Fix](#amd-watermark-fix)

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

## Fixes

### AMD Watermark fix
Additionally I personally encountered an issue with a huge ass watermark being planted on my monitors.
That watermark is meant for in-house testing purposes at AMD. You can remove it with a make rule.

```
$ make amd-watermark-fix
```
