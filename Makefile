# List of source directories to copy files from.
SRC_DIRS := git backup_branches python

# Destination directory.
DIST_DIR := dist

.PHONY: build clean

build:
	@echo "Creating destination directory '$(DIST_DIR)'..."
	mkdir -p $(DIST_DIR)
	@echo "Copying files from source directories into '$(DIST_DIR)'..."
	@for dir in $(SRC_DIRS); do \
		if [ -d $$dir ]; then \
			cp -rv $$dir/* $(DIST_DIR)/; \
		else \
			echo "Directory '$$dir' does not exist."; \
		fi; \
	done

clean:
	@echo "Removing '$(DIST_DIR)' directory..."
	rm -rf $(DIST_DIR)
