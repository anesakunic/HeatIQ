# HeatIQ Mobile App

A smart heating control system mobile application built with Flutter. This repository contains the frontend implementation of the HeatIQ app.

## Prerequisites

Before running the app, make sure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install) (SDK version ^3.7.2)
- [Xcode](https://apps.apple.com/us/app/xcode/id497799835) (for iOS development)
- [Android Studio](https://developer.android.com/studio) (for Android development and Android SDK)
- [CocoaPods](https://cocoapods.org/) (for iOS dependencies)

## Setup

1. Clone the repository:

```bash
git clone https://github.com/yourusername/heat_iq_app.git
cd heat_iq_app
```

2. Install dependencies:

```bash
flutter pub get
```

3. Install iOS dependencies:

```bash
cd ios
pod install
cd ..
```

## Running the App

### For iOS:

```bash
flutter run -d ios    # For iOS Simulator
```

### For Android:

```bash
flutter run -d android    # For Android Emulator
```

## Features

- Smart thermostat control
- Room temperature monitoring
- Device management
- User profile management
- Temperature scheduling

## Note

This is a frontend-only implementation. Backend integration is required for full functionality. Backend API endpoints are documented in the code comments.
