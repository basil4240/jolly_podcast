# Jolly Podcast App

## Intro

This is a Practical Challenge - Flutter Coding Assessment, demonstrating a mobile application for podcast consumption.

## Details about the Project

The Jolly Podcast App is a Flutter application designed for browsing and playing podcasts. It features:

*   **Authentication**: User login functionality.
*   **Podcast Listing**: Displaying a list of available podcasts with pagination and pull-to-refresh.
*   **Episode Listing**: Viewing episodes for a selected podcast, also with pagination and pull-to-refresh.
*   **Audio Player**: A dedicated player screen for listening to podcast episodes, with play/pause, skip forward/backward, and a seek slider.
*   **Network Resilience**: Custom dialogs for handling network errors with retry/cancel options.
*   **API Integration**: Uses `Dio` and `Retrofit` for type-safe API communication.
*   **State Management**: Leverages the `Stacked` framework for reactive state management and dependency injection.
*   **Data Models**: Utilizes `Freezed` for immutable data models and `json_serializable` for JSON parsing.

## Steps to Run the Project

To run this project, follow these steps:

1.  **Clone the repository**:
    ```bash
    git clone [https://github.com/basil4240/jolly_podcast]
    cd jolly_podcast
    ```
2.  **Get dependencies**:
    ```bash
    flutter pub get
    ```
3.  **Generate code**: This project uses code generation for `Stacked` and `Retrofit`.
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
4.  **Run the app**:
    To run on a connected device or emulator (e.g., Chrome web browser):
    ```bash
    flutter run -d chrome
    ```
    Replace `chrome` with your desired device ID (e.g., `windows`, `emulator-5554`). You can list available devices using `flutter devices`.

## Chosen State Management Approach

The project utilizes the **Stacked** framework for state management. Stacked provides a robust and scalable architecture by separating UI logic (Views) from business logic (ViewModels) and offering powerful features like:

*   **Dependency Injection**: Through its `locator` service.
*   **Navigation Service**: Simplified navigation across routes.
*   **Dialog and Bottom Sheet Services**: Centralized management of UI overlays.
*   **Reactive ViewModels**: `BaseViewModel` and `FutureViewModel` are used to manage UI state, asynchronous operations, and notify listeners for UI updates.

This approach promotes clean code, testability, and maintainability.

## Any Assumptions Made

*   **API Availability**: Assumed that the backend API (`https://api.jollypodcast.net/api/`) is operational and returns data in the expected format.
*   **Authentication Token**: Assumed that a valid authentication token can be obtained upon successful login and is required for most API calls.
*   **Audio Content URLs**: Assumed that the `content_url` provided by the API in episode data points to a valid and playable audio file.
*   **Asset Paths**: Assumed asset paths like `assets/pngs/jolly_logo.png` are correct and accessible. A temporary placeholder was used for `user_avatar.png` which should be replaced with an actual asset if available.
*   **`requiresTokenSymbol`**: It was assumed that the `AuthInterceptor` checks for an `Extra` parameter named by this symbol to determine if a token should be added.

## What You Would Improve with More Time

Given more time, I would focus on the following improvements:

*   **Comprehensive Error Handling**: Implement more granular error handling within ViewModels to differentiate between network, parsing, and business logic errors, providing more specific feedback to the user.
*   **User Experience (UX) Enhancements**:
    *   **Loading States**: More elaborate loading indicators (e.g., shimmer effects) for lists and detailed screens.
    *   **Empty States**: Custom, more visually appealing empty state widgets for when no podcasts/episodes are available.
    *   **Offline Support**: Implement caching mechanisms (e.g., using `Hive` or `moor`) to allow users to browse and listen to content offline.
*   **Testing**: Expand unit and widget tests, especially for ViewModels and services, to ensure robust functionality. Add integration tests for critical user flows.
*   **Theming**: Further refine the theming system to provide more consistent and flexible styling options across the application.
*   **Performance Optimization**: Profile the application for performance bottlenecks and optimize rendering and data fetching, particularly for large lists.
*   **Continuous Integration/Deployment (CI/CD)**: Set up automated CI/CD pipelines for faster development cycles and reliable deployments.
*   **Internationalization (i18n)**: Implement multi-language support.
*   **Player Features**:
    *   Background audio playback.
    *   Playback speed control.
    *   Sleep timer.
    *   Download episode functionality.

## Test the App with APK

An APK build of the application is available at the root of this project folder for easy testing on Android devices.