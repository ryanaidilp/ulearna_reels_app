# ULearna App

A Flutter project to show video in instagram reels format.

## Table of Contents

- [ULearna App](#ulearna-app)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
  - [Installation Instructions](#installation-instructions)
  - [Important Notes](#important-notes)
  - [Features](#features)

## Getting Started

This project is a Flutter application that provides a rich video learning experience with features like infinite scrolling, video caching, and interactive controls.

## Installation Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/ulearna_app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd ulearna_app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Set up environment files:
   - Copy `.env.example` to three new files:
     - `.env`
     - `.env.dev`
     - `.env.stg`
   - Fill in the appropriate values for each environment
5. Generate necessary files:

   ```bash
   dart run build_runner build -d
   ```

6. Run the app:

   ```bash
   flutter run
   ```

This repository includes launch configurations for both VSCode and Android Studio. Select the configuration that matches the environment you want to run.

## Important Notes

- Before running `build_runner`, comment out line 7 in `lib/shared/data/models/api_response_model.dart`.
- After generating the files, revert line 7 and the generated files `api_response_model.g.dart` and `api_response_model.freezed.dart`.

## Features

- Infinite scroll reels video page displaying video information (username, caption, views, etc.)
- Video and thumbnail caching using `flutter_cache_manager`
- Interactive video controls:
  - Hold to pause, release to play (UI information is hidden during pause)
  - Tap to mute/unmute
- Expandable video captions
- Highlighted hashtags in captions with appropriate colors
