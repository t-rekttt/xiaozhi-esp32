@echo off
REM Build script for D Solution DS-01 (NV3030B + ES8311/ES7210) on Windows
REM Prerequisites: ESP-IDF v5.4+ installed
REM   Run from ESP-IDF Command Prompt, or run export.bat first

where idf.py >nul 2>&1
if errorlevel 1 (
    echo ERROR: idf.py not found. Please run from ESP-IDF Command Prompt
    exit /b 1
)

cd /d "%~dp0"

echo Setting target to ESP32-S3...
call idf.py set-target esp32s3

REM Board and OTA config are already in sdkconfig.defaults.esp32s3
call idf.py reconfigure

echo Building firmware for D Solution DS-01 (NV3030B)...
call idf.py build

echo.
echo =========================================
echo Build complete!
echo Firmware binary: build\xiaozhi.bin
echo.
echo To flash via USB:
echo   idf.py -p COM3 flash
echo =========================================
