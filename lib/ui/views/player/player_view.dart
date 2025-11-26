import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/theme_extensions/app_colors.dart';
import '../../common/theme_extensions/app_text_styles.dart';
import 'player_viewmodel.dart';

/// A widget that displays the audio player interface for a specific episode.
///
/// This view allows users to play, pause, seek, and skip through an episode.
/// It integrates with `PlayerViewModel` to manage audio playback state and
/// interact with episode data.
class PlayerView extends StackedView<PlayerViewModel> {
  final int episodeId;

  const PlayerView({super.key, required this.episodeId});

  @override

  /// Builds the UI for the Player screen.
  ///
  /// This method observes the [viewModel] to react to changes in episode
  /// details, playback state, current position, and duration. It displays a
  /// loading indicator initially, an error message if fetching fails, a "no
  /// episode data available" message if data is null, or the full player UI
  /// with controls and progress.
  Widget builder(
    BuildContext context,
    PlayerViewModel viewModel,
    Widget? child,
  ) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    /// Helper function to format a [Duration] object into a "HH:MM:SS" or "MM:SS" string.
    String formatDuration(Duration d) {
      if (d == Duration.zero) return '00:00';
      String twoDigits(int n) => n.toString().padLeft(2, '0');
      String twoDigitMinutes = twoDigits(d.inMinutes.remainder(60));
      String twoDigitSeconds = twoDigits(d.inSeconds.remainder(60));
      return '${d.inHours > 0 ? '${twoDigits(d.inHours)}:' : ''}$twoDigitMinutes:$twoDigitSeconds';
    }

    return Scaffold(
      backgroundColor: colors.color7,
      body: SafeArea(
        child: Builder(builder: (context) {
          if (viewModel.isBusy) {
            return const Center(child: CircularProgressIndicator());
          } else if (viewModel.hasError) {
            return Center(
                child: Text('Error: ${viewModel.modelError}',
                    style: textStyles.pageSubtitle));
          } else if (viewModel.data == null) {
            return Center(
                child: Text('No episode data available',
                    style: textStyles.pageSubtitle));
          } else {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 321,
                    decoration: BoxDecoration(
                      color: colors.color10,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: CachedNetworkImage(
                            imageUrl: viewModel.episodePictureUrl ??
                                "", // Use actual image URL
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                Container(color: colors.color10),
                            errorWidget: (context, url, error) => Container(
                              color: colors.color10,
                              child: const Icon(Icons.error,
                                  color: Colors.white24),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              viewModel.episodeTitle ??
                                  'Episode Title', // Use actual title
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: colors.whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      viewModel.episodePodcastTitle ?? 'Podcast Title',
                      style: textStyles.playerTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      viewModel.episodePodcastAuthor ?? 'Podcast Author',
                      style: textStyles.pageSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    viewModel.episodeDescription ?? 'Episode Description',
                    style: textStyles.playerDescription,
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: SliderTheme(
                                data: SliderThemeData(
                                  activeTrackColor: colors.whiteColor,
                                  inactiveTrackColor: colors.whiteColor
                                      ?.withAlpha((255 * 0.3).round()),
                                  thumbColor: colors.whiteColor,
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 6),
                                  overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 12),
                                  trackHeight: 3,
                                ),
                                child: Slider(
                                  value: viewModel.currentPosition.inSeconds
                                      .toDouble(),
                                  min: 0.0,
                                  max: viewModel.totalDuration.inSeconds
                                      .toDouble(),
                                  onChanged: (value) {
                                    viewModel
                                        .seek(Duration(seconds: value.toInt()));
                                  },
                                  allowedInteraction:
                                      SliderInteraction.tapAndSlide,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatDuration(viewModel.currentPosition),
                                style: textStyles.playerTime),
                            Text(formatDuration(viewModel.totalDuration),
                                style: textStyles.playerTime),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.replay_10,
                                color: colors.whiteColor, size: 32),
                            onPressed: viewModel.skipTenSecondsBackward,
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: colors.whiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(
                                viewModel.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: colors.color1,
                                size: 24,
                              ),
                              onPressed: () {
                                if (viewModel.isPlaying) {
                                  viewModel.pause();
                                } else {
                                  viewModel.play();
                                }
                              },
                            ),
                          ),
                          const SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.forward_10,
                                color: colors.whiteColor, size: 32),
                            onPressed: viewModel.skipTenSecondsForward,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            );
          }
        }),
      ),
    );
  }

  @override
  PlayerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerViewModel(episodeId: episodeId);
}

/// A custom clipper that clips a widget into a diamond shape.
///
/// This clipper creates a path that forms a diamond, useful for unique UI elements.
class _DiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
