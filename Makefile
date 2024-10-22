


.PHONY: init
init:  ## Install dependencies
	@npm i
	@npm run sync-styles

.PHONY: lint
lint:  ## Check for style and formatting issues
	@npm run check-yaml
	@npm run check-styles


