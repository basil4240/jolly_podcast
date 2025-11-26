import 'package:jolly_podcast/app/app.router.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/app/app.dialogs.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';
import 'package:jolly_podcast/models/episode/episode.dart';
import 'package:jolly_podcast/services/episode_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

/// ViewModel for the Episode List View.
///
/// Manages the state and logic for fetching, displaying, and interacting
/// with a paginated list of episodes for a specific podcast. It supports
/// pull-to-refresh, loading more episodes, and handles network errors.
class EpisodeListViewModel extends FutureViewModel<List<Episode>> {
  final _navigationService = locator<NavigationService>();
  final _episodeService = locator<EpisodeService>();
  final _dialogService = locator<DialogService>();

  final int podcastId;

  EpisodeListViewModel({required this.podcastId});

  final List<Episode> _episodes = [];
  List<Episode> get episodes => _episodes;

  int _currentPage = 1;
  final int _perPage = 5;
  bool _hasMoreEpisodes = true;
  bool get hasMoreEpisodes => _hasMoreEpisodes;

  @override
  Future<List<Episode>> futureToRun() async {
    return _fetchEpisodes();
  }

  /// Refreshes the episode list by clearing existing data, resetting
  /// pagination, and re-fetching the first page of episodes.
  Future<void> onRefresh() async {
    _episodes.clear();
    _currentPage = 1;
    _hasMoreEpisodes = true;
    setBusy(true);
    await _fetchEpisodes();
    setBusy(false);
    notifyListeners();
  }

  /// Fetches a batch of episodes from the API for the current podcast.
  ///
  /// Handles pagination and displays a retry dialog on network errors.
  Future<List<Episode>> _fetchEpisodes() async {
    final result = await _episodeService.getEpisodes(
      podcastId: podcastId,
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
          return _fetchEpisodes();
        }
        return [];
      },
      (response) {
        _episodes.addAll(response.data.data.data);
        _currentPage = response.data.data.currentPage;
        _hasMoreEpisodes = response.data.data.nextPageUrl != null;
        return _episodes;
      },
    );
  }

  /// Loads the next batch of episodes if available and not already busy.
  void onLoadMore() async {
    if (!isBusy && _hasMoreEpisodes) {
      _currentPage++;
      setBusy(true);
      await _fetchEpisodes();
      setBusy(false);
    }
  }

  /// Navigates to the Player View for a selected episode.
  void onEpisodeTapped(int id) {
    _navigationService.navigateToPlayerView(episodeId: id);
  }
}