essentials:
	@chmod +x install/essentials && sudo install/essentials

apache2:
	@chmod +x install/apache2 && sudo install/apache2

php:
	@chmod +x install/php && sudo install/php

mysql:
	@chmod +x install/mysql && sudo install/mysql

perl:
	@chmod +x install/perl && sudo install/perl

webserver lamp: essentials apache2 mysql php

phpunit:
	@chmod +x install/phpunit && sudo install/phpunit

java8:
	@chmod +x install/java8 && sudo install/java8

nodejs: java8
	@chmod +x install/nodejs && sudo install/nodejs

square:
	@chmod +x install/square && install/square

zend:
	@chmod +x install/zend && sudo install/zend

xdebug:
	@chmod +x install/xdebug && sudo install/xdebug

locales:
	@chmod +x install/locales && sudo install/locales

smarty2:
	@chmod +x install/smarty2 && sudo install/smarty2

codesniffer:
	@chmod +x install/codesniffer && install/codesniffer

sphinx-0-22:
	@chmod +x install/sphinx-0-22 && sudo install/sphinx-0-22

graphviz:
	@chmod +x install/graphviz && sudo install/graphviz

webgrind: xdebug graphviz
	@chmod +x install/webgrind && sudo install/webgrind

doxygen: graphviz
	@chmod +x install/doxygen && install/doxygen

production: lamp locales

development: lamp locales xdebug phpunit codesniffer doxygen

php-developer: lamp locales xdebug phpunit codesniffer zend webgrind doxygen

js-developer: nodejs square

frontend-developer: php-developer js-developer

perl-developer: essentials apache2 mysql perl doxygen
