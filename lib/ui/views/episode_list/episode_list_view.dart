import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_colors.dart';
import 'package:jolly_podcast/ui/common/widgets/episode_tile/episode_tile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_text_styles.dart';

import 'episode_list_viewmodel.dart';

/// A widget that displays a list of episodes for a specific podcast.
///
/// This view allows users to browse episodes, refresh the list, and
/// load more episodes. It integrates with `EpisodeListViewModel` to manage
/// state and interact with episode data.
class EpisodeListView extends StackedView<EpisodeListViewModel> {
  final int podcastId;
  final String podcastTitle;
  final String podcastAuthor;
  const EpisodeListView(
      {super.key,
      required this.podcastId,
      required this.podcastTitle,
      required this.podcastAuthor});

  @override
  /// Builds the UI for the EpisodeList screen.
  ///
  /// This method observes the [viewModel] to react to changes in the episode
  /// list, loading state, and error conditions. It displays a loading indicator
  /// initially, an error message if fetching fails, a "no episodes available"
  /// message if the list is empty, or the list of episodes with pull-to-refresh
  /// and a "Show more" button for pagination.
  Widget builder(
    BuildContext context,
    EpisodeListViewModel viewModel,
    Widget? child,
  ) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return Scaffold(
      backgroundColor: colors.color7,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/pngs/jolly_logo.png',
                    height: 40,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 40,
                      width: 80,
                      color: Colors.white24,
                      child: const Center(
                          child: Text('Logo', style: TextStyle(fontSize: 10))),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0x3E3E3E80),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: colors.color5,
                          child: Image.asset(
                            'assets/pngs/jolly_logo.png',
                            errorBuilder: (context, error, stackTrace) =>
                                Icon(Icons.person, color: colors.whiteColor),
                          ),
                        ),
                        const SizedBox(width: 19),
                        Icon(Icons.notifications_sharp,
                            color: colors.whiteColor, size: 32),
                        const SizedBox(width: 23),
                        Icon(Icons.search, color: colors.whiteColor, size: 32),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 21),
            Expanded(
              child: RefreshIndicator(
                onRefresh: viewModel.onRefresh,
                child: Builder(builder: (context) {
                  if (viewModel.isBusy && viewModel.episodes.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (viewModel.hasError) {
                    return Center(
                        child: Text('Error: ${viewModel.modelError}',
                            style: textStyles.pageSubtitle));
                  } else if (viewModel.episodes.isEmpty) {
                    return Center(
                        child: Text('No episodes available',
                            style: textStyles.pageSubtitle));
                  } else {
                    return SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text(podcastTitle, style: textStyles.pageTitle),
                            const SizedBox(height: 4),
                            Text('By: $podcastAuthor',
                                style: textStyles.pageSubtitle),
                            const SizedBox(height: 8),
                            Divider(color: colors.color8, thickness: 1),
                            const SizedBox(height: 4),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: viewModel.episodes.length,
                              itemBuilder: (context, index) {
                                final episode = viewModel.episodes[index];
                                return Column(
                                  children: [
                                    EpisodeTile(
                                      episode: episode,
                                      onEpisodeTapped:
                                          viewModel.onEpisodeTapped,
                                    ),
                                    if (index < viewModel.episodes.length - 1)
                                      const SizedBox(height: 16),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(height: 24),
                            if (viewModel.hasMoreEpisodes)
                              GestureDetector(
                                onTap: viewModel.onLoadMore,
                                child: Container(
                                  width: double.infinity,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                    color: colors.color8,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                      child: Center(
                                    child: viewModel.isBusy
                                        ? SizedBox(
                                            height: 20,
                                            width: 20,
                                            child:
                                                const CircularProgressIndicator())
                                        : Text('Show more',
                                            style: textStyles.showMoreButton),
                                  )),
                                ),
                              ),
                            const SizedBox(height: 35),
                          ],
                        ),
                      ),
                    );
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  EpisodeListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EpisodeListViewModel(podcastId: podcastId);
}