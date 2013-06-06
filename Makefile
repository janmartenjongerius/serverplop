# The installation shell.
SHELL=/bin/bash

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
		"include/notfound"
	);
endef

# An install function.
define install
	$(eval fileName := $(call findscript,$1)) \
	$(shell chmod +x $(fileName)) \
	@$(SHELL) $(fileName)
endef

# A sudo install function.
define suinstall
	$(eval fileName := $(call findscript,$1)) \
	$(shell chmod +x $(fileName)) \
	@sudo $(SHELL) $(fileName)
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

public-ssh-key:
	@$(call install,public-ssh-key)

essentials:
	@$(call suinstall,essentials)
	@$(call install,public-ssh-key)
