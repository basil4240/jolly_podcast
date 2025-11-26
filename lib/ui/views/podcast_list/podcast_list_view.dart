import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/theme_extensions/app_colors.dart';
import '../../common/theme_extensions/app_text_styles.dart';
import '../../common/widgets/podcast_card/podcast_card.dart';
import 'podcast_list_viewmodel.dart';

/// A widget that displays a list of podcasts, allowing users to browse,
/// refresh, and load more podcasts. It integrates with `PodcastListViewModel`
/// to manage state and interact with the podcast data.
class PodcastListView extends StackedView<PodcastListViewModel> {
  const PodcastListView({super.key});

  @override

  /// Builds the UI for the PodcastList screen.
  ///
  /// This method observes the [viewModel] to react to changes in the podcast
  /// list, loading state, and error conditions. It displays a loading indicator
  /// initially, an error message if fetching fails, a "no podcasts available"
  /// message if the list is empty, or the list of podcasts with pull-to-refresh
  /// and a "Show more" button for pagination.
  Widget builder(
    BuildContext context,
    PodcastListViewModel viewModel,
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
                  if (viewModel.isBusy && viewModel.podcasts.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (viewModel.hasError) {
                    return Center(
                        child: Text('Error: ${viewModel.modelError}',
                            style: textStyles.pageSubtitle));
                  } else if (viewModel.podcasts.isEmpty) {
                    return Center(
                        child: Text('No podcasts available',
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
                            Text('Top Jolly', style: textStyles.pageTitle),
                            const SizedBox(height: 4),
                            Text('Top 50 jolly podcasts',
                                style: textStyles.pageSubtitle),
                            const SizedBox(height: 8),
                            Divider(color: colors.color8, thickness: 1),
                            const SizedBox(height: 4),
                            GestureDetector(
                              onTap: viewModel.toggleSortPodcastByAscending,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.tune,
                                        color: colors.whiteColor, size: 20),
                                    const SizedBox(width: 8),
                                    Text('Sort by: ',
                                        style: textStyles.sortLabel),
                                    Text(
                                        viewModel.sortPodcastByAscending
                                            ? 'Ascending'
                                            : 'Descending',
                                        style: textStyles.sortLabel),
                                    const SizedBox(width: 4),
                                    Icon(
                                        viewModel.sortPodcastByAscending
                                            ? Icons.keyboard_arrow_down
                                            : Icons.keyboard_arrow_up,
                                        color: colors.whiteColor,
                                        size: 20),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 16,
                                childAspectRatio: 0.78,
                              ),
                              itemCount: viewModel.podcasts.length,
                              itemBuilder: (context, index) {
                                return PodcastCard(
                                  podcast: viewModel.podcasts[index],
                                  onPodcastTapped: (podcast) =>
                                      viewModel.onPodcastTapped(podcast.id,
                                          podcast.title, podcast.author),
                                );
                              },
                            ),
                            const SizedBox(height: 24),
                            if (viewModel.hasMorePodcasts)
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
                                    child: viewModel.isBusy
                                        ? SizedBox(
                                            height: 20,
                                            width: 20,
                                            child:
                                                const CircularProgressIndicator())
                                        : Text('Show more',
                                            style: textStyles.showMoreButton),
                                  ),
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
  PodcastListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PodcastListViewModel();
}
