import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:jolly_podcast/models/podcast/podcast.dart'; // Import the Podcast model

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required int id,
    @JsonKey(name: 'podcast_id') required int podcastId,
    @JsonKey(name: 'content_url') String? contentUrl,
    required String title,
    int? season,
    int? number,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    required String description,
    bool? explicit,
    required int duration,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'play_count') int? playCount,
    @JsonKey(name: 'like_count') int? likeCount,
    @JsonKey(name: 'average_rating') String? averageRating,
    // required Podcast podcast,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
  }) = _Episode;

  const Episode._();

  factory Episode.fromJson(Map<String, Object?> json) =>
      _$EpisodeFromJson(json);

  // Custom getter for formatted date and duration
  String get formattedDateAndDuration {
    final formattedDate = DateFormat('dd MMM').format(createdAt);
    final minutes = duration ~/ 60;
    return '$formattedDate, $minutes minutes';
  }
}

// New models for the API response structure

@freezed
class EpisodeListResponse with _$EpisodeListResponse {
  const factory EpisodeListResponse({
    required String message,
    required EpisodeResponseData data,
  }) = _EpisodeListResponse;

  factory EpisodeListResponse.fromJson(Map<String, Object?> json) =>
      _$EpisodeListResponseFromJson(json);
}

@freezed
class EpisodeResponseData with _$EpisodeResponseData {
  const factory EpisodeResponseData({
    required String message,
    required PaginatedEpisodeData data,
  }) = _EpisodeResponseData;

  factory EpisodeResponseData.fromJson(Map<String, Object?> json) =>
      _$EpisodeResponseDataFromJson(json);
}

@freezed
class PaginatedEpisodeData with _$PaginatedEpisodeData {
  const factory PaginatedEpisodeData({
    required List<Episode> data,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int total,
  }) = _PaginatedEpisodeData;

  factory PaginatedEpisodeData.fromJson(Map<String, Object?> json) =>
      _$PaginatedEpisodeDataFromJson(json);
}
