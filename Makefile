# The installation shell.
SHELL=/bin/bash -c

# Distributor / OS.
DISTRIBUTOR=$(shell lsb_release -is)

# OS codename.
CODENAME=$(shell lsb_release -cs)

# The current working directory.
PWD=$(shell pwd)

# Find our installation script.
define findscript
	$(or \
		$(wildcard $(DISTRIBUTOR)/$(CODENAME)/install/$1), \
		$(wildcard $(DISTRIBUTOR)/install/$1), \
		$(wildcard install/$1), \
		include/notfound
	)
endef

# Find our hardware installation script.
define findhwscript
	$(or \
		$(wildcard $(DISTRIBUTOR)/$(CODENAME)/hardware/$1), \
		$(wildcard $(DISTRIBUTOR)/hardware/$1), \
		include/notfound
	)
endef

# An install function.
define install
	$(eval fileName := $(call findscript,$1)) \
	$(shell chmod +x $(fileName)) \
	@$(SHELL) '$(fileName) $1'
endef

# A sudo install function.
define suinstall
	$(eval fileName := $(call findscript,$1)) \
	$(shell chmod +x $(fileName)) \
	@sudo $(SHELL) '$(fileName) $1'
endef

# A sudo hardware install function.
define suhwinstall
	$(eval fileName := $(call findhwscript,$1)) \
	$(shell chmod +x $(fileName)) \
	@sudo $(SHELL) '$(fileName) hardware/$1'
endef

# Detect if we support the current OS.
define detectsupport
	$(if \
		ifeq \
		$(wildcard $(DISTRIBUTOR)/$(CODENAME)) \
		"$(DISTRIBUTOR)/$(CODENAME)", \
		@echo "Found supported OS in $(PWD)/$(DISTRIBUTOR)/$(CODENAME)", \
		@echo "Your OS is not supported yet" \
  	@echo "Check the pull requests or create your own!" \
	)
endef

autodetect:
	@$(call detectsupport)

.PHONY: autodetect

notfound-test:
	@$(call install,fiets)
	@$(call suinstall,fiets)
	@$(call suhwinstall,fiets)

public-ssh-key:
	@$(call install,public-ssh-key)

essentials:
	@$(call suinstall,essentials)
	@$(call install,public-ssh-key)

tools:
	@$(call install,tools)

apache2:
	@$(call suinstall,apache2)

php:
	@$(call suinstall,php)

mysql:
	@$(call suinstall,mysql)

perl:
	@$(call suinstall,perl)

webserver lamp: essentials apache2 mysql php perl

phpunit:
	@$(call suinstall,phpunit)

phpsh:
	@$(call install,phpsh)

java8:
	@$(call suinstall,java8)

nodejs: java8
	@$(call suinstall,nodejs)

square:
	@$(call install,square)

zend:
	@$(call suinstall,zend)

xdebug:
	@$(call suinstall,xdebug)

locales:
	@$(call suinstall,locales)

smarty2:
	@$(call suinstall,smarty2)

codesniffer:
	@$(call install,codesniffer)

sphinx-0-22:
	@$(call suinstall,sphinx-0-22)

graphviz:
	@$(call suinstall,graphviz)

webgrind: xdebug graphviz
	@$(call suinstall,webgrind)

doxygen: graphviz
	@$(call install,doxygen)

production: lamp locales

developer php-developer: \
	lamp \
	tools \
	locales \
	xdebug \
	phpunit \
	phpsh \
	codesniffer \
	zend \
	webgrind \
	doxygen

js-developer: nodejs square tools

frontend-developer: php-developer js-developer

amd-watermark-fix:
	@$(call suhwinstall,AMD/graphics/watermarkfix.sh)
