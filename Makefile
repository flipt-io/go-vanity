.PHONY: build
build:
	@echo "Building..."
	git checkout public
	git restore --source main vangen.json
	vangen -out .

.DEFAULT_GOAL := build