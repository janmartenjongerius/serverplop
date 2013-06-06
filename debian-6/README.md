# Debian 6 - Squeeze

- [Fresh installation](#fresh-installation)

## Fresh installation

Debian being Debian, it comes with a really bare installation.
When you first install a Debian 6 server, it lacks a few things to get serverplop started.

- sudo
- zip / git

When you want to set up your server for the first time, please install the following as root:

```bash
$ apt-get install -y sudo zip
```

Or, alternatively you can directly go for the forking method, using:

```bash
$ apt-get install -y sudo git
```

Then you either [download the ZIP archive](https://github.com/johmanx10/serverplop/archive/master.zip) and extract that, or you clone the git repo.
