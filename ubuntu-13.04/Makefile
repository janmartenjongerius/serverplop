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

locales:
	@chmod +x install/locales && sudo install/locales

production: webserver locales

development: webserver locales phpunit nodejs square

amd-watermark-fix:
	@chmod +x hardware/AMD/graphics/watermarkfix.sh && \
		hardware/AMD/graphics/watermarkfix.sh
