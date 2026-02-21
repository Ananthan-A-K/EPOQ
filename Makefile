# ============================================================
#  EPOQ — Developer Makefile
#  Run `make help` to see all available commands
# ============================================================

.PHONY: help install dev build clean

# Default target
help:
	@echo ""
	@echo "  EPOQ — Available Commands"
	@echo "  ========================="
	@echo "  make install      Install Node.js dependencies"
	@echo "  make dev          Start the development server"
	@echo "  make build        Build the production desktop app"
	@echo "  make clean        Remove build artifacts"
	@echo ""

install:
	@echo "📦 Installing Node dependencies..."
	cd image-trainer && npm install

dev:
	@echo "🚀 Starting EPOQ development server..."
	cd image-trainer && npm run tauri dev

build:
	@echo "🔨 Building EPOQ for production..."
	cd image-trainer && npm run tauri build

clean:
	@echo "🧹 Cleaning build artifacts..."
	cd image-trainer && rm -rf .next node_modules src-tauri/target
	@echo "✅ Clean complete."

