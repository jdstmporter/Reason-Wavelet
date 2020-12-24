SDK_HOME := $(HOME)/Library/Reason/SDK
BUILD_TOOLS := $(SDK_HOME)/Tools/Build
RENDERER := $(SDK_HOME)/RE2DRender.app/Contents/MacOS/Re2DRender

.PHONY: gui
gui:
	$(RENDERER) GUI2D GUI

.PHONY: build
build:
	PYTHONPATH=$(BUILD_TOOLS) python build45.py local45 Testing

.PHONY: all
all: gui build
