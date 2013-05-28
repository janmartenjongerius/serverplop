#Serverplop

Server installation bundles and fixes. Adding lazyness to being a developer.

## Supported distributions
- [Debian 6 - Squeeze](debian-6/)
- [Debian 7 - Wheezy](debian-7/)
- [Ubuntu 13.04 - Raring Ringtail](ubuntu-13.04/)

### Adding your own OS
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
