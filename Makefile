
basedir  ?= $(shell pwd)

vale_config ?= $(basedir)/.vale.ini
vale_input ?= $(basedir)/docs/modules/ROOT/pages
vale_ext ?= .adoc

.PHONY: check
check:  ## Check for style and formatting issues
	@vale \
		--config=$(vale_config) \
		--ext=$(vale_ext) \
		$(vale_input)


