#!/usr/bin/env bash
cd "$(dirname "$0")"
# Set DYLD_LIBRARY_PATH to ensure the native library is found
export DYLD_LIBRARY_PATH="$PWD:$DYLD_LIBRARY_PATH"
# Use dotnet on macOS if available, otherwise fall back to mono
if command -v dotnet &> /dev/null; then
    dotnet Builder.dll
else
    mono Builder.exe
fi 