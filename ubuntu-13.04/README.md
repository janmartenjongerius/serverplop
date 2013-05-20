# Ubuntu 13.04

To simply build a fresh development environment, do the following:

```
$ make development
```

## Development

Development is a bundle make rule for the following make rules:

- webserver
- locales
- xdebug
- phpunit
- codesniffer (defaults to PSR2 if possible)
- nodejs (which calls `make java8`)
- square

## Production

Production is a simplified version which leaves out all developer tools.

- webserver
- locales

## Additional rules

- zend
- smarty2
- java8
- graphviz
- webgrind
- doxygen
- sphinx-0-22
- update

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
