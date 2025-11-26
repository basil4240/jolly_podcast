import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'podcast.freezed.dart';
part 'podcast.g.dart';

@freezed
class Podcast with _$Podcast {
  const factory Podcast({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String title,
    required String author,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_type') String? categoryType,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    @JsonKey(name: 'cover_picture_url') String? coverPictureUrl,
    required String description,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @Default(false) @JsonKey(name: 'is_subscribed') bool isSubscribed,
    @JsonKey(name: 'subscriber_count') int? subscriberCount,
  }) = _Podcast;

  factory Podcast.fromJson(Map<String, Object?> json) =>
      _$PodcastFromJson(json);
}

@freezed
class Publisher with _$Publisher {
  const factory Publisher({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'company_name') required String companyName,
    required String email,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Publisher;

  factory Publisher.fromJson(Map<String, Object?> json) =>
      _$PublisherFromJson(json);
}

@freezed
class PodcastListResponse with _$PodcastListResponse {
  const factory PodcastListResponse({
    required String message,
    required PodcastResponseData data,
  }) = _PodcastListResponse;

  factory PodcastListResponse.fromJson(Map<String, Object?> json) =>
      _$PodcastListResponseFromJson(json);
}

@freezed
class PodcastResponseData with _$PodcastResponseData {
  const factory PodcastResponseData({
    required String message,
    required PaginatedPodcastData data,
  }) = _PodcastResponseData;

  factory PodcastResponseData.fromJson(Map<String, Object?> json) =>
      _$PodcastResponseDataFromJson(json);
}

@freezed
class PaginatedPodcastData with _$PaginatedPodcastData {
  const factory PaginatedPodcastData({
    required List<Podcast> data,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int total,
  }) = _PaginatedPodcastData;

  factory PaginatedPodcastData.fromJson(Map<String, Object?> json) =>
      _$PaginatedPodcastDataFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    required String label,
    required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, Object?> json) => _$LinkFromJson(json);
}

@freezed
class EmbeddablePlayerSettings with _$EmbeddablePlayerSettings {
  const factory EmbeddablePlayerSettings({
    required Player player,
    required Features features,
    required Playlists playlists,
    @JsonKey(name: 'elements_visiblity')
    required ElementsVisibility elementsVisibility,
  }) = _EmbeddablePlayerSettings;

  factory EmbeddablePlayerSettings.fromJson(Map<String, Object?> json) =>
      _$EmbeddablePlayerSettingsFromJson(json);
}

@freezed
class Player with _$Player {
  const factory Player({
    required String size,
    String? theme,
    required String width,
    required String height,
    @JsonKey(name: 'main_color') required String mainColor,
  }) = _Player;

  factory Player.fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}

@freezed
class Features with _$Features {
  const factory Features({
    @JsonKey(name: 'info_icon') required bool infoIcon,
    @JsonKey(name: 'follow_button') required bool followButton,
    @JsonKey(name: 'give_tip_button') required bool giveTipButton,
  }) = _Features;

  factory Features.fromJson(Map<String, Object?> json) =>
      _$FeaturesFromJson(json);
}

@freezed
class Playlists with _$Playlists {
  const factory Playlists({
    required bool enabled,
    @JsonKey(name: 'play_continuously') required bool playContinuously,
  }) = _Playlists;

  factory Playlists.fromJson(Map<String, Object?> json) =>
      _$PlaylistsFromJson(json);
}

@freezed
class ElementsVisibility with _$ElementsVisibility {
  const factory ElementsVisibility({
    required bool like,
    required bool logo,
    required bool share,
    required bool comments,
    required bool download,
  }) = _ElementsVisibility;

  factory ElementsVisibility.fromJson(Map<String, Object?> json) =>
      _$ElementsVisibilityFromJson(json);
}
