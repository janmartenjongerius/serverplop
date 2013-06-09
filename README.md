#Serverplop

Server installation bundles and fixes. Adding lazyness to being a developer.

- [Installation](#installation)
  - [PHP Developer](#php-developer)
  - [JavaScript Developer](#javascript-developer)
  - [Frontend developer](#frontend-developer)
  - [Production](#production)
  - [Lamp](#lamp)
  - [Additional rules](#additional-rules)
  - [Java 8 warning](#java-8-warning)
- [Supported distributions](#supported-distributions)
- [Adding your own OS](#adding-your-own-os)
  - [Some rules to keep in mind](#some-rules-to-keep-in-mind)

## Installation

Installing your server with Serverplop should go like a breeze. However, there are some operating systems that come with a really bare installation. If you encounter problems at some point, please take a look at the README of your OS.

Some operating systems support additional make rules, where other operating systems will ignore those.
Again, for more info, please refer to the README of your OS.

### PHP developer

To simply build a fresh development environment, do the following:


```bash
$ make php-developer
```
PHP developer is a bundle make rule for the following make rules:

- lamp
- tools
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
- tools

### Frontend developer

```bash
$ make frontend-developer
```

Make rules:

- php-developer
- js-developer

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
- perl

## Additional rules

- smarty2
- java8
- graphviz
- sphinx-0-22
- public-ssh-key

## Supported distributions
- [Debian 6 - Squeeze](https://github.com/johmanx10/serverplop/tree/master/debian-6)
- [Ubuntu 13.04 - Raring Ringtail](https://github.com/johmanx10/serverplop/tree/master/ubuntu-13.04)

## Adding your own OS
Feel free to add your own distribution via a pull request. You'll not only help yourself, but a whole bunch of grateful developers who now can easily install and maintain a developer environment.

### Some rules to keep in mind
1. An installation script MUST stop as soon as an error appears. This way a developer gets the chance to fix it and your script won't wreck the server, assuming dependencies got installed.
2. An installation script can be run any number of times without doing harm or cluttering the system.
3. You can update your server using previously mentioned installation scripts.
4. The need for `sudo` is transparent. You never have to call sudo in front of a make.
5. The script will quit if root rights aren't met, while they are needed, informing the user why.
6. The script will quit if run as root while that explicitly shouldn't be the case.
7. Installations should be tested each time when they are modified.
8. Installation scripts can be run in sequence, at all times.
