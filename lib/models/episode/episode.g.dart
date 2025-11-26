// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      id: (json['id'] as num).toInt(),
      podcastId: (json['podcast_id'] as num).toInt(),
      contentUrl: json['content_url'] as String,
      title: json['title'] as String,
      season: (json['season'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      pictureUrl: json['picture_url'] as String,
      description: json['description'] as String,
      explicit: json['explicit'] as bool,
      duration: (json['duration'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      playCount: (json['play_count'] as num).toInt(),
      likeCount: (json['like_count'] as num).toInt(),
      averageRating: (json['average_rating'] as num?)?.toDouble(),
      podcast: Podcast.fromJson(json['podcast'] as Map<String, dynamic>),
      publishedAt: DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'podcast_id': instance.podcastId,
      'content_url': instance.contentUrl,
      'title': instance.title,
      'season': instance.season,
      'number': instance.number,
      'picture_url': instance.pictureUrl,
      'description': instance.description,
      'explicit': instance.explicit,
      'duration': instance.duration,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'play_count': instance.playCount,
      'like_count': instance.likeCount,
      'average_rating': instance.averageRating,
      'podcast': instance.podcast,
      'published_at': instance.publishedAt.toIso8601String(),
    };

_$EpisodeListResponseImpl _$$EpisodeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeListResponseImpl(
      message: json['message'] as String,
      data: EpisodeResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeListResponseImplToJson(
        _$EpisodeListResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$EpisodeResponseDataImpl _$$EpisodeResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeResponseDataImpl(
      message: json['message'] as String,
      data: PaginatedEpisodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeResponseDataImplToJson(
        _$EpisodeResponseDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$PaginatedEpisodeDataImpl _$$PaginatedEpisodeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedEpisodeDataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num).toInt(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginatedEpisodeDataImplToJson(
        _$PaginatedEpisodeDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$EpisodeDetailsResponseImpl _$$EpisodeDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeDetailsResponseImpl(
      message: json['message'] as String,
      data: EpisodeDetailsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeDetailsResponseImplToJson(
        _$EpisodeDetailsResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$EpisodeDetailsDataImpl _$$EpisodeDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeDetailsDataImpl(
      message: json['message'] as String,
      data: Episode.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeDetailsDataImplToJson(
        _$EpisodeDetailsDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
