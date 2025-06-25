SRC_DIRS := git git_backup_branches github_cli gitignore javascript python cleanup disk

BUILD_DIR := build

.PHONY: all build clean

all: build

build: clean
	@echo "Creating destination directory '$(BUILD_DIR)'..."
	mkdir -p $(BUILD_DIR)
	@echo "Copying files from source directories into '$(BUILD_DIR)'..."
	@for dir in $(SRC_DIRS); do \
		if [ -d $$dir ]; then \
			cp -rv $$dir/* $(BUILD_DIR)/; \
		else \
			echo "Directory '$$dir' does not exist."; \
		fi; \
	done

clean:
	@echo "Removing '$(BUILD_DIR)' directory..."
	rm -rf $(BUILD_DIR)