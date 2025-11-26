import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../models/podcast/podcast.dart';
import '../../theme_extensions/app_colors.dart';
import '../../theme_extensions/app_text_styles.dart';
import 'podcast_card_model.dart';

class PodcastCard extends StackedView<PodcastCardModel> {
  final Podcast podcast;
  final void Function(Podcast podcast) onPodcastTapped;

  const PodcastCard(
      {super.key, required this.podcast, required this.onPodcastTapped});

  @override
  Widget builder(
    BuildContext context,
    PodcastCardModel viewModel,
    Widget? child,
  ) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () => onPodcastTapped(podcast),
      child: Container(
        decoration: BoxDecoration(
          color: colors.color8,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://corsproxy.io/?${Uri.encodeComponent(podcast.pictureUrl)}',
                  height: 133,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    height: 133,
                    width: double.infinity,
                    color: Colors.grey[800],
                    child: const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2.0,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    height: 133,
                    width: double.infinity,
                    color: Colors.black,
                    child: const Icon(Icons.error, color: Colors.red, size: 40),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(podcast.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textStyles.podcastTitle),
              const SizedBox(height: 4),
              Text('By: ${podcast.author}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textStyles.podcastAuthor),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PodcastCardModel viewModelBuilder(BuildContext context) => PodcastCardModel();
}
