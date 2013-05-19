webserver:
	@chmod +x install/webserver && sudo install/webserver

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

production: webserver locales

development: webserver locales xdebug phpunit codesniffer nodejs square

amd-watermark-fix:
	@chmod +x hardware/AMD/graphics/watermarkfix.sh && \
		hardware/AMD/graphics/watermarkfix.sh

update:
	@git pull && make webserver
