import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart'; // Import for date formatting

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required int id,
    @JsonKey(name: 'podcast_id') required String podcastId,
    @JsonKey(name: 'content_url') required String contentUrl,
    required String title,
    required String description,
    required int duration,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Episode;

  const Episode._(); // Private constructor added here

  factory Episode.fromJson(Map<String, Object?> json) => _$EpisodeFromJson(json);

  // Custom getter for formatted date and duration
  String get formattedDateAndDuration {
    final formattedDate = DateFormat('dd MMM').format(createdAt); // e.g., 20 June
    final minutes = duration ~/ 60;
    return '$formattedDate, $minutes minutes';
  }
}
