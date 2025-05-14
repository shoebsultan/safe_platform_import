# safe_platform_import

A Dart-only plugin to safely import platform-specific code (like `dart:html`) in Flutter projects. This package helps in managing platform-specific imports without causing issues when compiling for different platforms.

## Features

- Safely import platform-specific code for **web**, **Android**, and **iOS**.
- Avoid issues where imports like `dart:html` or other platform-specific libraries cause errors on non-web platforms.
- Use conditional imports and platform checks to ensure compatibility across platforms.

## Installation

Add `safe_platform_import` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  safe_platform_import: ^0.0.3
