#Serverplop

Server installation bundles and fixes. Adding lazyness to being a developer.

## Ubuntu 13.04

To simply build a fresh development environment, do the following:

```
$ cd ubuntu-13.04
$ sudo make development
```

Development is a bundle make rule for the following make rules:

- webserver
- phpunit
- java8
- nodejs
- square

`make square` will also call for the `make nodejs` rule, while `make nodejs` will call for the `make java8` rule, which will install the Oracle version of Java version 8.
Please note that `make java8` will remove all `openjdk*` packages if you agree or frantically mash return.

### AMD Watermark fix
Additionally I personally encountered an issue with a huge ass watermark being planted on my monitors.
That watermark is meant for in-house testing purposes at AMD. You can remove it with a make rule.

```
$ sudo make amd-watermark-fix
```