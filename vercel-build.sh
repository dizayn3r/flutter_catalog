#!/usr/bin/env bash
set -e

# Install Flutter in the build environment
git clone --depth 1 https://github.com/flutter/flutter.git _flutter
export PATH="$PWD/_flutter/bin:$PATH"

flutter config --enable-web
flutter --version
flutter pub get
flutter build web --release
