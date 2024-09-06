# EduApp Project Documentation

## Table of Contents

1. **Introduction**
2. **Project Structure**
3. **Installation and Setup**
4. **Features Overview**
5. **UI Overview**
6. **Code Architecture**
   - Theme Management
   - Navigation
   - State Management
   - Service Integration
7. **Dependencies**
8. **Screens**
   - Splash Screen
   - Home Screen
   - Locator Screen
   - Guide Screen
   - Video Widget
9. **Theming and Design**
10. **Future Improvements**
11. **Contact**

---

## 1. Introduction

**EduApp** is a mobile application designed to educate users on various topics, specifically composting and environmental sustainability. The app includes a user-friendly interface with multiple screens for information consumption, location mapping, and video tutorials.

## 2. Project Structure

The project is organized into the following directories:

```
/lib
  /screens
    - splash_screen.dart
    - home_screen.dart
    - guide_screen.dart
    - feed_screen.dart
    - locator_screen.dart
  /widgets
    - video_widget.dart
  /services
    - auth_service.dart
    - db_service.dart
/main.dart
/pubspec.yaml
```

### Directory Explanation:

- `/screens`: Contains all the screen classes for different sections of the app.
- `/widgets`: Custom widgets used within the app, such as the video player.
- `/services`: Holds logic for interacting with external services like authentication and database management.

## 3. Installation and Setup

To run this project locally, follow the steps below:

### Prerequisites

- Flutter SDK (version 3.0 or later)
- Dart SDK
- Android Studio or VSCode with Flutter Plugin installed
- Firebase account (if using Firebase as a backend)

### Steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/TheHiddenDeveloper/EduApp.git
   ```

2. Navigate to the project directory:

   ```bash
   cd eduapp
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Connect a device or start an emulator and run the project:

   ```bash
   flutter run
   ```

## 4. Features Overview

- **Composting Guide**: A comprehensive guide that educates users on composting and includes a video tutorial.
- **Locator**: An interactive map that shows important environmental points of interest near the user’s location.
- **Video Tutorials**: Integration of YouTube videos for educational content.
- **Custom Navigation Tabs**: Intuitive navigation bar with screens for the home feed, locator, and composting guide.

## 5. UI Overview

- **Color Scheme**: The app uses a green and white color scheme.
  - Primary color: Green
  - Secondary color: White
  - Tab colors: Green with white icons and text
- **Navigation Bar**: Consists of Home and Locator sections.
- **Theming**: Theme colors are consistent across the app to maintain a seamless user experience.

## 6. Code Architecture

### Theme Management

The theming of the app is centralized in `main.dart` using Flutter's `ThemeData`. The `colorScheme` is used to manage primary and secondary colors across the app.

### Navigation

The app uses Flutter's built-in `Navigator` and `BottomNavigationBar` for screen transitions. Tab-based navigation is managed using `TabController` in the `HomeScreen`.

### State Management

The app relies on `setState` for local state management. Global states are handled through providers, particularly for services such as authentication and database interaction.

### Service Integration

Services such as Firebase (for authentication and database interaction) are injected into various screens. These services are initialized through a provider in the `main.dart` file.

## 7. Dependencies

The project uses the following packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.10.0
  firebase_auth: ^4.5.0
  cloud_firestore: ^4.8.1
  geolocator: ^10.1.0
  flutter_map: ^3.2.0
  youtube_player_flutter: ^8.1.0
  provider: ^6.0.0
```

### Notable Plugins

- **Firebase Core**: For initializing Firebase services.
- **Geolocator**: For accessing the user’s location.
- **YouTube Player**: For embedding YouTube videos.
- **Provider**: For state management.

## 8. Screens

### 8.1 Splash Screen

- **File**: `splash_screen.dart`
- **Purpose**: Displays a splash screen upon app startup, followed by navigation to the appropriate screen (e.g., onboarding, home).
- **Dependencies**: ThemeService.

### 8.2 Home Screen

- **File**: `home_screen.dart`
- **Purpose**: The main hub of the app. Contains tabs for navigating between the Feed and Guide sections.
- **Dependencies**: TabController, BottomNavigationBar.

### 8.3 Locator Screen

- **File**: `locator_screen.dart`
- **Purpose**: Displays a map with environmental points of interest based on the user’s current location.
- **Dependencies**: Geolocator for location services and Flutter Map for rendering the map.

### 8.4 Guide Screen

- **File**: `guide_screen.dart`
- **Purpose**: Displays a composting guide with a video tutorial for users.
- **Dependencies**: YouTube Player for embedding the tutorial video.

### 8.5 Video Widget

- **File**: `video_widget.dart`
- **Purpose**: A custom widget that embeds a YouTube video.
- **Dependencies**: YouTube Player.

## 9. Theming and Design

The app follows a consistent theme with green and white as the dominant colors.

- **Primary Color**: Green (used for the navigation bar, buttons, and active tabs).
- **Secondary Color**: White (used for backgrounds and unselected items).
- **Text Styling**: The text is white when displayed on a green background for better contrast and readability.

## 10. Future Improvements

- **State Management**: Implement a more scalable state management solution such as `Riverpod` or `Bloc` for better maintainability.
- **User Profiles**: Add user-specific data and preferences to allow personalization.
- **Enhanced Mapping**: Add more layers of data to the map, such as nearby composting centers or environmental hazards.
- **Offline Mode**: Allow users to access the composting guide offline.

## 11. Contact

For any queries or issues regarding the app, you can contact:

- **Developer**: [Hagan Rodney]
- **Email**: [rodneyhagan74@gmail.com.com]
- **GitHub Repository**: [https://github.com/TheHiddenDeveloper/EduApp/tree/master](https://github.com/TheHiddenDeveloper/EduApp/tree/master)
