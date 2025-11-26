import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:jolly_podcast/models/podcast/podcast.dart'; // Import the Podcast model

part 'episode.freezed.dart';
part 'episode.g.dart';

/// Represents a single episode of a podcast.
///
/// This model is generated using the `freezed` package for immutability
/// and `json_serializable` for JSON serialization/deserialization.
@freezed
class Episode with _$Episode {
  const factory Episode({
    required int id,
    @JsonKey(name: 'podcast_id') required int podcastId,
    @JsonKey(name: 'content_url') required String contentUrl,
    required String title,
    int? season,
    int? number,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    required String description,
    required bool explicit,
    required int duration,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'play_count') required int playCount,
    @JsonKey(name: 'like_count') required int likeCount,
    @JsonKey(name: 'average_rating') double? averageRating,
    required Podcast podcast,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
  }) = _Episode;

  const Episode._();

  factory Episode.fromJson(Map<String, Object?> json) =>
      _$EpisodeFromJson(json);

  /// Returns a formatted string combining the creation date and duration.
  /// Example: "20 Jun, 30 minutes"
  String get formattedDateAndDuration {
    final formattedDate = DateFormat('dd MMM').format(createdAt);
    final minutes = duration ~/ 60;
    return '$formattedDate, $minutes minutes';
  }
}

/// Represents the top-level API response structure for a list of episodes.
@freezed
class EpisodeListResponse with _$EpisodeListResponse {
  const factory EpisodeListResponse({
    required String message,
    required EpisodeResponseData data,
  }) = _EpisodeListResponse;

  factory EpisodeListResponse.fromJson(Map<String, Object?> json) =>
      _$EpisodeListResponseFromJson(json);
}

/// Represents the data payload within the EpisodeListResponse.
@freezed
class EpisodeResponseData with _$EpisodeResponseData {
  const factory EpisodeResponseData({
    required String message,
    required PaginatedEpisodeData data,
  }) = _EpisodeResponseData;

  factory EpisodeResponseData.fromJson(Map<String, Object?> json) =>
      _$EpisodeResponseDataFromJson(json);
}

/// Represents paginated data for a list of episodes.
///
/// Contains the list of [Episode] objects along with pagination metadata.
@freezed
class PaginatedEpisodeData with _$PaginatedEpisodeData {
  const factory PaginatedEpisodeData({
    required List<Episode> data,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    required int from,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    required List<Link>
        links, // Assuming Link model is already defined in podcast.dart
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') required String path,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int to,
    required int total,
  }) = _PaginatedEpisodeData;

  factory PaginatedEpisodeData.fromJson(Map<String, Object?> json) =>
      _$PaginatedEpisodeDataFromJson(json);
}

/// Represents the top-level API response structure for a single episode's details.
@freezed
class EpisodeDetailsResponse with _$EpisodeDetailsResponse {
  const factory EpisodeDetailsResponse({
    required String message,
    required EpisodeDetailsData data,
  }) = _EpisodeDetailsResponse;

  factory EpisodeDetailsResponse.fromJson(Map<String, Object?> json) =>
      _$EpisodeDetailsResponseFromJson(json);
}

/// Represents the data payload within the EpisodeDetailsResponse, containing a single [Episode].
@freezed
class EpisodeDetailsData with _$EpisodeDetailsData {
  const factory EpisodeDetailsData({
    required String message,
    required Episode data, // The single Episode object is nested under 'data'
  }) = _EpisodeDetailsData;

  factory EpisodeDetailsData.fromJson(Map<String, Object?> json) =>
      _$EpisodeDetailsDataFromJson(json);
}