VERSION := $(shell jq -r '.version' src/info.json)
DIRECTORY := $(shell basename $(CURDIR))
ZIP_FILE := $(DIRECTORY)_$(VERSION).zip

# EXCLUDE_FILES := \
# 	.DS_Store \
# 	.git\/* \
# 	.gitignore \
# 	.vscode\/* \
# 	*.zip \
# 	Makefile \
# 	README.md

# Define the default target
.PHONY: all clean zip

all: clean zip
clean:
	@echo "Cleaning up"
	@rm -f *.zip
	@echo "Done"

zip:
	@echo "Creating $(ZIP_FILE)"
	@zip -r $(ZIP_FILE) src
	@echo "Done"
