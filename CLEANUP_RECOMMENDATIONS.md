# Cleanup Recommendations

This document lists recommendations for improving the project's quality, maintainability, and performance. Each item includes a checkbox to track completion.

## 1. Dependency Management & Pubspec.yaml

- [ ] **Update `analyzer` version**: The `build_runner` output frequently warns about `analyzer` version mismatch (`Analyzer language version: 3.4.0`, `SDK language version: 3.9.0`). This should be updated by running `flutter packages upgrade` or by adding an explicit constraint in `dev_dependencies` (`analyzer: ^9.0.0`).
- [ ] **Review outdated packages**: `flutter pub outdated` shows "28 packages have newer versions incompatible with dependency constraints." A thorough review and update of all dependencies (especially `stacked`, `json_serializable`, `freezed`, `logger`, `mockito`, `just_audio` which have newer stable versions) should be done to ensure stability, performance, and access to latest features/bug fixes. This might involve breaking changes and careful migration.
- [ ] **Remove unused dependencies**: `protobuf` was listed as "no longer being depended on" by `flutter pub get` in one of the previous runs. It should be removed if truly unused.
- [ ] **Pin `retrofit_generator` version**: The `retrofit_generator` version was `^7.0.0` but `flutter pub get` resolved to `7.0.8`. For release builds, it's often safer to use exact versions or tighter ranges (`7.0.x`) to prevent unexpected updates.

## 2. Network Layer

- [ ] **Custom `RequiresToken` annotation cleanup**: The `annotations.dart` file and the `RequiresToken` annotation were created as a workaround due to the `retrofit_generator`'s `errorLogger` issue. Now that the `errorLogger` issue is resolved by downgrading `retrofit` and `retrofit_generator`, and implementing a custom `_ErrorInterceptor`, the `RequiresToken` annotation might not be strictly necessary if the `AuthInterceptor` is only checking `options.headers['Authorization']`. If `AuthInterceptor` is indeed looking for a custom `Extra` parameter, then the annotation is valid, but the naming `requiresTokenSymbol` is a bit generic. Consider renaming `requiresTokenSymbol` constant to something more specific to its purpose, e.g., `requiresAuthTokenExtraKey`.
- [ ] **API Endpoint Constants**: Centralize API endpoint strings (`'podcasts'`, `'episodes'`) into `api_endpoints.dart` for better management. (Currently, `baseUrl` is in `api_endpoints.dart`, but the segment base URLs are directly in `RestApi` annotations).
- [ ] **Error Handling Refinement**: The `ApiException` handling in `AuthService` and `EpisodeService` is very repetitive. Consider creating a generic function or a custom `Dio` interceptor that handles common HTTP status code errors (401, 403, 404, 500) and returns the appropriate `Either<ApiException, T>`. This would reduce boilerplate in service methods.
- [ ] **Base URL in Rest Clients**: Currently, the `baseUrl` for `AuthRestClient`, `PodcastRestClient`, and `EpisodeRestClient` is set relative to `DioClient`'s `baseUrl`. This is fine, but ensuring all base URLs are defined consistently (e.g., all from `api_endpoints.dart`) is good practice.

## 3. UI/ViewModel Layer

- [ ] **Magic Numbers/Strings**: Replace hardcoded values like `20` (padding), `321` (height), `12` (borderRadius) with constants or theme extensions where appropriate. For example, `const SizedBox(height: 20)` could be part of a spacing system.
- [ ] **Text Styling Consistency**: Ensure all text styles (`textStyles.pageSubtitle`, `textStyles.playerTitle`, etc.) are consistently applied and that the `AppTextStyles` theme extension is comprehensive enough to cover all UI text needs.
- [ ] **Asset Path Consistency**: While `assets/pngs/jolly_logo.png` was used as a temporary fix, for release, ensure that `assets/images/user_avatar.png` actually exists or a proper default is chosen.
- [ ] **PodcastCard/EpisodeTile Navigation**: In `PodcastListView`, `onPodcastTapped` now navigates with `podcastId`. The original method also passed `podcastTitle` and `podcastAuthor`. If these are not used in `EpisodeListView`, they can be removed from the signature of `onPodcastTapped`.
- [ ] **UI for Empty/Error States**: The current implementation of empty and error states is basic (`Text('Error: ...')`, `Text('No podcasts available')`). For a polished app, these should be custom widgets that are visually appealing and user-friendly.

## 4. Code Style & Practices

- [ ] **`const` Keyword**: Apply `const` aggressively where widgets and variables are compile-time constants for performance optimization.
- [ ] **Unused Imports**: Remove any unused imports (`cached_network_image` in `PlayerView` might be removable as `CachedNetworkImage` widget itself implies its usage)
- [ ] **`_DiamondClipper`**: This is an unused class in `player_view.dart`. It should be removed if it's not being used.
