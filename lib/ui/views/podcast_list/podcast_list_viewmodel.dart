import 'package:jolly_podcast/app/app.dialogs.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/app/app.router.dart';
import 'package:jolly_podcast/models/podcast/podcast.dart';
import 'package:jolly_podcast/services/podcast_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

/// ViewModel for the Podcast List View.
///
/// Manages the state and logic for fetching, displaying, and interacting
/// with a paginated list of podcasts. It supports pull-to-refresh,
/// loading more podcasts, sorting, and handles network errors.
class PodcastListViewModel extends FutureViewModel<List<Podcast>> {
  final _navigationService = locator<NavigationService>();
  final _podcastService = locator<PodcastService>();
  final _dialogService = locator<DialogService>();

  final List<Podcast> _podcasts = [];

  List<Podcast> get podcasts => _podcasts;

  int _currentPage = 1;
  final int _perPage = 5;
  bool _hasMorePodcasts = true;

  bool get hasMorePodcasts => _hasMorePodcasts;

  bool _sortPodcastByAscending = true;

  bool get sortPodcastByAscending => _sortPodcastByAscending;

  @override
  Future<List<Podcast>> futureToRun() async {
    return _fetchPodcasts();
  }

  /// Refreshes the podcast list by clearing existing data, resetting
  /// pagination, and re-fetching the first page of podcasts.
  Future<void> onRefresh() async {
    _podcasts.clear();
    _currentPage = 1;
    _hasMorePodcasts = true;
    setBusy(true);
    await _fetchPodcasts();
    setBusy(false);
    notifyListeners();
  }

  /// Fetches a batch of podcasts from the API.
  ///
  /// Handles pagination and displays a retry dialog on network errors.
  Future<List<Podcast>> _fetchPodcasts() async {
    final result = await _podcastService.getPodcastSubscriptions(
      page: _currentPage,
      perPage: _perPage,
    );

    return result.fold(
      (failure) async {
        final dialogResult = await _dialogService.showCustomDialog(
          variant: DialogType.networkRetry,
          title: 'Network Error',
          description: failure.message,
          mainButtonTitle: 'Retry',
          secondaryButtonTitle: 'Cancel',
        );

        if (dialogResult?.confirmed == true) {
          return _fetchPodcasts();
        }
        return [];
      },
      (response) {
        _podcasts.addAll(response.data.data.data);
        _currentPage = response.data.data.currentPage;
        _hasMorePodcasts = response.data.data.nextPageUrl != null;
        return _podcasts;
      },
    );
  }

  /// Toggles the sorting order for podcasts (ascending/descending).
  void toggleSortPodcastByAscending() {
    _sortPodcastByAscending = !_sortPodcastByAscending;
    notifyListeners();
  }

  /// Loads the next batch of podcasts if available and not already busy.
  void onLoadMore() async {
    if (!isBusy && _hasMorePodcasts) {
      _currentPage++;
      setBusy(true);
      await _fetchPodcasts();
      setBusy(false);
    }
  }

  /// Navigates to the Episode List View for a selected podcast.
  ///
  /// Passes the podcast ID, title, and author to the Episode List View.
  void onPodcastTapped(int id, String podcastTitle, String podcastAuthor) {
    _navigationService.navigateToEpisodeListView(
        podcastId: id,
        podcastTitle: podcastTitle,
        podcastAuthor: podcastAuthor);
  }
}
