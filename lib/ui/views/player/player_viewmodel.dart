import 'package:just_audio/just_audio.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/app/app.router.dart';
import 'package:jolly_podcast/app/app.dialogs.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';
import 'package:jolly_podcast/models/episode/episode.dart';
import 'package:jolly_podcast/services/episode_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

/// ViewModel for the Player View.
///
/// Manages the state and logic for playing an episode, including fetching
/// episode details, controlling audio playback, handling progress, and
/// managing network errors.
class PlayerViewModel extends FutureViewModel<Episode> {
  final _episodeService = locator<EpisodeService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  final int episodeId;
  final _audioPlayer = AudioPlayer();

  bool _isPlaying = false;
  Duration _currentPosition = Duration.zero;
  Duration _totalDuration = Duration.zero;

  bool get isPlaying => _isPlaying;
  Duration get currentPosition => _currentPosition;
  Duration get totalDuration => _totalDuration;

  String? get episodeTitle => data?.title;
  String? get episodePictureUrl => data?.pictureUrl;
  String? get episodeDescription => data?.description;
  String? get episodePodcastTitle => data?.podcast.title;
  String? get episodePodcastAuthor => data?.podcast.author;

  PlayerViewModel({required this.episodeId});

  @override

  /// Fetches the episode details and initializes the audio player.
  ///
  /// This method is called automatically by `FutureViewModel` on initialization.
  /// It handles API errors by displaying a retry dialog.
  Future<Episode> futureToRun() async {
    final result =
        await _episodeService.getEpisodeDetails(episodeId: episodeId);

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
          return futureToRun();
        }
        throw Exception(failure.message);
      },
      (response) async {
        final episode = response.data.data;
        await _audioPlayer.setUrl(episode.contentUrl);
        _totalDuration = _audioPlayer.duration ?? Duration.zero;

        _audioPlayer.playerStateStream.listen((playerState) {
          _isPlaying = playerState.playing;
          notifyListeners();
        });

        _audioPlayer.positionStream.listen((position) {
          _currentPosition = position;
          notifyListeners();
        });

        _audioPlayer.durationStream.listen((duration) {
          _totalDuration = duration ?? Duration.zero;
          notifyListeners();
        });

        return episode;
      },
    );
  }

  /// Starts or resumes audio playback.
  void play() {
    _audioPlayer.play();
  }

  /// Pauses audio playback.
  void pause() {
    _audioPlayer.pause();
  }

  /// Seeks to a specific position in the audio.
  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  /// Skips forward by 10 seconds.
  void skipTenSecondsForward() {
    final newPosition = _currentPosition + const Duration(seconds: 10);
    _audioPlayer.seek(newPosition);
  }

  /// Skips backward by 10 seconds.
  void skipTenSecondsBackward() {
    final newPosition = _currentPosition - const Duration(seconds: 10);
    _audioPlayer.seek(newPosition.isNegative ? Duration.zero : newPosition);
  }

  @override

  /// Disposes of the audio player resources when the ViewModel is no longer needed.
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
