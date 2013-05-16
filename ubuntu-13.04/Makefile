webserver:
	@chmod +x install/webserver && install/webserver

phpunit:
	@chmod +x install/phpunit && install/phpunit

java8:
	@chmod +x install/java8 && install/java8

nodejs: java8
	@chmod +x install/nodejs && install/nodejs

square:
	@chmod +x install/square && install/square

development: webserver phpunit nodejs square

amd-watermark-fix:
	@chmod +x hardware/AMD/graphics/watermarkfix.sh && \
		hardware/AMD/graphics/watermarkfix.sh