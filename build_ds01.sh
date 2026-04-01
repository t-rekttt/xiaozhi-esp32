#!/bin/bash
set -e

# Build script for D Solution DS-01 (NV3030B + ES8311/ES7210)
# Prerequisites: ESP-IDF v5.4+ installed and sourced
#   . $HOME/esp/esp-idf/export.sh

# Check ESP-IDF
if ! command -v idf.py &> /dev/null; then
    echo "ERROR: idf.py not found. Please source ESP-IDF first:"
    echo "  . \$HOME/esp/esp-idf/export.sh"
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Clean previous build config if switching targets
if [ -f sdkconfig ] && ! grep -q "CONFIG_IDF_TARGET_ESP32S3=y" sdkconfig 2>/dev/null; then
    echo "Cleaning previous build (different target)..."
    idf.py fullclean
fi

# Set target
idf.py set-target esp32s3

# Board and OTA config are already in sdkconfig.defaults.esp32s3
# Reconfigure to pick up defaults
idf.py reconfigure

# Build
echo "Building firmware for D Solution DS-01 (NV3030B)..."
idf.py build

echo ""
echo "========================================="
echo "Build complete!"
echo "Firmware binary: build/xiaozhi.bin"
echo ""
echo "To flash via USB:"
echo "  idf.py -p /dev/ttyUSB0 flash"
echo ""
echo "Or flash just the app partition:"
echo "  idf.py -p /dev/ttyUSB0 app-flash"
echo "========================================="
