import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jolly_podcast/models/episode/episode.dart';
import 'package:stacked/stacked.dart';

import '../../theme_extensions/app_colors.dart';
import '../../theme_extensions/app_text_styles.dart';
import 'episode_tile_model.dart';

class EpisodeTile extends StackedView<EpisodeTileModel> {
  final Episode episode;
  final Function(int) onEpisodeTapped;

  const EpisodeTile(
      {super.key, required this.episode, required this.onEpisodeTapped});

  @override
  Widget builder(
    BuildContext context,
    EpisodeTileModel viewModel,
    Widget? child,
  ) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () => onEpisodeTapped(episode.id),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://corsproxy.io/?${Uri.encodeComponent(episode.pictureUrl)}',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Container(
                    width: 80,
                    height: 80,
                    color: colors.color4,
                    child: Icon(Icons.music_note, color: colors.whiteColor),
                  ),
                ),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: colors.color6,
                  shape: BoxShape.circle,
                  border: Border.all(color: colors.whiteColor!, width: 2),
                ),
                child:
                    Icon(Icons.play_arrow, color: colors.whiteColor, size: 28),
              ),
            ],
          ),
          const SizedBox(width: 7),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  episode.title,
                  style: textStyles.episodeTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  episode.description,
                  style: textStyles.episodeDescription,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  episode.formattedDateAndDuration,
                  style: textStyles.episodeDate,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.more_vert, color: colors.color5, size: 24),
        ],
      ),
    );
  }

  @override
  EpisodeTileModel viewModelBuilder(
    BuildContext context,
  ) =>
      EpisodeTileModel();
}
