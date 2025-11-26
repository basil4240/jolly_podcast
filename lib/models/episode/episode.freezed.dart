// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcast_id')
  int get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_url')
  String get contentUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int? get season => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String get pictureUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get explicit => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'play_count')
  int get playCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'like_count')
  int get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  double? get averageRating => throw _privateConstructorUsedError;
  Podcast get podcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  DateTime get publishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'podcast_id') int podcastId,
      @JsonKey(name: 'content_url') String contentUrl,
      String title,
      int? season,
      int? number,
      @JsonKey(name: 'picture_url') String pictureUrl,
      String description,
      bool explicit,
      int duration,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'play_count') int playCount,
      @JsonKey(name: 'like_count') int likeCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      Podcast podcast,
      @JsonKey(name: 'published_at') DateTime publishedAt});

  $PodcastCopyWith<$Res> get podcast;
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? podcastId = null,
    Object? contentUrl = null,
    Object? title = null,
    Object? season = freezed,
    Object? number = freezed,
    Object? pictureUrl = null,
    Object? description = null,
    Object? explicit = null,
    Object? duration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? playCount = null,
    Object? likeCount = null,
    Object? averageRating = freezed,
    Object? podcast = null,
    Object? publishedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      podcastId: null == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int,
      contentUrl: null == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playCount: null == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      podcast: null == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as Podcast,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastCopyWith<$Res> get podcast {
    return $PodcastCopyWith<$Res>(_value.podcast, (value) {
      return _then(_value.copyWith(podcast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'podcast_id') int podcastId,
      @JsonKey(name: 'content_url') String contentUrl,
      String title,
      int? season,
      int? number,
      @JsonKey(name: 'picture_url') String pictureUrl,
      String description,
      bool explicit,
      int duration,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'play_count') int playCount,
      @JsonKey(name: 'like_count') int likeCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      Podcast podcast,
      @JsonKey(name: 'published_at') DateTime publishedAt});

  @override
  $PodcastCopyWith<$Res> get podcast;
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? podcastId = null,
    Object? contentUrl = null,
    Object? title = null,
    Object? season = freezed,
    Object? number = freezed,
    Object? pictureUrl = null,
    Object? description = null,
    Object? explicit = null,
    Object? duration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? playCount = null,
    Object? likeCount = null,
    Object? averageRating = freezed,
    Object? podcast = null,
    Object? publishedAt = null,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      podcastId: null == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int,
      contentUrl: null == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playCount: null == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      podcast: null == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as Podcast,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl extends _Episode with DiagnosticableTreeMixin {
  const _$EpisodeImpl(
      {required this.id,
      @JsonKey(name: 'podcast_id') required this.podcastId,
      @JsonKey(name: 'content_url') required this.contentUrl,
      required this.title,
      this.season,
      this.number,
      @JsonKey(name: 'picture_url') required this.pictureUrl,
      required this.description,
      required this.explicit,
      required this.duration,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'play_count') required this.playCount,
      @JsonKey(name: 'like_count') required this.likeCount,
      @JsonKey(name: 'average_rating') this.averageRating,
      required this.podcast,
      @JsonKey(name: 'published_at') required this.publishedAt})
      : super._();

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'podcast_id')
  final int podcastId;
  @override
  @JsonKey(name: 'content_url')
  final String contentUrl;
  @override
  final String title;
  @override
  final int? season;
  @override
  final int? number;
  @override
  @JsonKey(name: 'picture_url')
  final String pictureUrl;
  @override
  final String description;
  @override
  final bool explicit;
  @override
  final int duration;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'play_count')
  final int playCount;
  @override
  @JsonKey(name: 'like_count')
  final int likeCount;
  @override
  @JsonKey(name: 'average_rating')
  final double? averageRating;
  @override
  final Podcast podcast;
  @override
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Episode(id: $id, podcastId: $podcastId, contentUrl: $contentUrl, title: $title, season: $season, number: $number, pictureUrl: $pictureUrl, description: $description, explicit: $explicit, duration: $duration, createdAt: $createdAt, updatedAt: $updatedAt, playCount: $playCount, likeCount: $likeCount, averageRating: $averageRating, podcast: $podcast, publishedAt: $publishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Episode'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('podcastId', podcastId))
      ..add(DiagnosticsProperty('contentUrl', contentUrl))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('season', season))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('pictureUrl', pictureUrl))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('explicit', explicit))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('playCount', playCount))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('averageRating', averageRating))
      ..add(DiagnosticsProperty('podcast', podcast))
      ..add(DiagnosticsProperty('publishedAt', publishedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.podcast, podcast) || other.podcast == podcast) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      podcastId,
      contentUrl,
      title,
      season,
      number,
      pictureUrl,
      description,
      explicit,
      duration,
      createdAt,
      updatedAt,
      playCount,
      likeCount,
      averageRating,
      podcast,
      publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode extends Episode {
  const factory _Episode(
          {required final int id,
          @JsonKey(name: 'podcast_id') required final int podcastId,
          @JsonKey(name: 'content_url') required final String contentUrl,
          required final String title,
          final int? season,
          final int? number,
          @JsonKey(name: 'picture_url') required final String pictureUrl,
          required final String description,
          required final bool explicit,
          required final int duration,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'play_count') required final int playCount,
          @JsonKey(name: 'like_count') required final int likeCount,
          @JsonKey(name: 'average_rating') final double? averageRating,
          required final Podcast podcast,
          @JsonKey(name: 'published_at') required final DateTime publishedAt}) =
      _$EpisodeImpl;
  const _Episode._() : super._();

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'podcast_id')
  int get podcastId;
  @override
  @JsonKey(name: 'content_url')
  String get contentUrl;
  @override
  String get title;
  @override
  int? get season;
  @override
  int? get number;
  @override
  @JsonKey(name: 'picture_url')
  String get pictureUrl;
  @override
  String get description;
  @override
  bool get explicit;
  @override
  int get duration;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'play_count')
  int get playCount;
  @override
  @JsonKey(name: 'like_count')
  int get likeCount;
  @override
  @JsonKey(name: 'average_rating')
  double? get averageRating;
  @override
  Podcast get podcast;
  @override
  @JsonKey(name: 'published_at')
  DateTime get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeListResponse _$EpisodeListResponseFromJson(Map<String, dynamic> json) {
  return _EpisodeListResponse.fromJson(json);
}

/// @nodoc
mixin _$EpisodeListResponse {
  String get message => throw _privateConstructorUsedError;
  EpisodeResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeListResponseCopyWith<EpisodeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeListResponseCopyWith<$Res> {
  factory $EpisodeListResponseCopyWith(
          EpisodeListResponse value, $Res Function(EpisodeListResponse) then) =
      _$EpisodeListResponseCopyWithImpl<$Res, EpisodeListResponse>;
  @useResult
  $Res call({String message, EpisodeResponseData data});

  $EpisodeResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EpisodeListResponseCopyWithImpl<$Res, $Val extends EpisodeListResponse>
    implements $EpisodeListResponseCopyWith<$Res> {
  _$EpisodeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EpisodeResponseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeResponseDataCopyWith<$Res> get data {
    return $EpisodeResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeListResponseImplCopyWith<$Res>
    implements $EpisodeListResponseCopyWith<$Res> {
  factory _$$EpisodeListResponseImplCopyWith(_$EpisodeListResponseImpl value,
          $Res Function(_$EpisodeListResponseImpl) then) =
      __$$EpisodeListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, EpisodeResponseData data});

  @override
  $EpisodeResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EpisodeListResponseImplCopyWithImpl<$Res>
    extends _$EpisodeListResponseCopyWithImpl<$Res, _$EpisodeListResponseImpl>
    implements _$$EpisodeListResponseImplCopyWith<$Res> {
  __$$EpisodeListResponseImplCopyWithImpl(_$EpisodeListResponseImpl _value,
      $Res Function(_$EpisodeListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EpisodeListResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EpisodeResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeListResponseImpl
    with DiagnosticableTreeMixin
    implements _EpisodeListResponse {
  const _$EpisodeListResponseImpl({required this.message, required this.data});

  factory _$EpisodeListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeListResponseImplFromJson(json);

  @override
  final String message;
  @override
  final EpisodeResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeListResponse(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeListResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeListResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeListResponseImplCopyWith<_$EpisodeListResponseImpl> get copyWith =>
      __$$EpisodeListResponseImplCopyWithImpl<_$EpisodeListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeListResponseImplToJson(
      this,
    );
  }
}

abstract class _EpisodeListResponse implements EpisodeListResponse {
  const factory _EpisodeListResponse(
      {required final String message,
      required final EpisodeResponseData data}) = _$EpisodeListResponseImpl;

  factory _EpisodeListResponse.fromJson(Map<String, dynamic> json) =
      _$EpisodeListResponseImpl.fromJson;

  @override
  String get message;
  @override
  EpisodeResponseData get data;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeListResponseImplCopyWith<_$EpisodeListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeResponseData _$EpisodeResponseDataFromJson(Map<String, dynamic> json) {
  return _EpisodeResponseData.fromJson(json);
}

/// @nodoc
mixin _$EpisodeResponseData {
  String get message => throw _privateConstructorUsedError;
  PaginatedEpisodeData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeResponseDataCopyWith<EpisodeResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeResponseDataCopyWith<$Res> {
  factory $EpisodeResponseDataCopyWith(
          EpisodeResponseData value, $Res Function(EpisodeResponseData) then) =
      _$EpisodeResponseDataCopyWithImpl<$Res, EpisodeResponseData>;
  @useResult
  $Res call({String message, PaginatedEpisodeData data});

  $PaginatedEpisodeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EpisodeResponseDataCopyWithImpl<$Res, $Val extends EpisodeResponseData>
    implements $EpisodeResponseDataCopyWith<$Res> {
  _$EpisodeResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedEpisodeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedEpisodeDataCopyWith<$Res> get data {
    return $PaginatedEpisodeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeResponseDataImplCopyWith<$Res>
    implements $EpisodeResponseDataCopyWith<$Res> {
  factory _$$EpisodeResponseDataImplCopyWith(_$EpisodeResponseDataImpl value,
          $Res Function(_$EpisodeResponseDataImpl) then) =
      __$$EpisodeResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, PaginatedEpisodeData data});

  @override
  $PaginatedEpisodeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EpisodeResponseDataImplCopyWithImpl<$Res>
    extends _$EpisodeResponseDataCopyWithImpl<$Res, _$EpisodeResponseDataImpl>
    implements _$$EpisodeResponseDataImplCopyWith<$Res> {
  __$$EpisodeResponseDataImplCopyWithImpl(_$EpisodeResponseDataImpl _value,
      $Res Function(_$EpisodeResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EpisodeResponseDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedEpisodeData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeResponseDataImpl
    with DiagnosticableTreeMixin
    implements _EpisodeResponseData {
  const _$EpisodeResponseDataImpl({required this.message, required this.data});

  factory _$EpisodeResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeResponseDataImplFromJson(json);

  @override
  final String message;
  @override
  final PaginatedEpisodeData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeResponseData(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeResponseData'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeResponseDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeResponseDataImplCopyWith<_$EpisodeResponseDataImpl> get copyWith =>
      __$$EpisodeResponseDataImplCopyWithImpl<_$EpisodeResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeResponseDataImplToJson(
      this,
    );
  }
}

abstract class _EpisodeResponseData implements EpisodeResponseData {
  const factory _EpisodeResponseData(
      {required final String message,
      required final PaginatedEpisodeData data}) = _$EpisodeResponseDataImpl;

  factory _EpisodeResponseData.fromJson(Map<String, dynamic> json) =
      _$EpisodeResponseDataImpl.fromJson;

  @override
  String get message;
  @override
  PaginatedEpisodeData get data;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeResponseDataImplCopyWith<_$EpisodeResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedEpisodeData _$PaginatedEpisodeDataFromJson(Map<String, dynamic> json) {
  return _PaginatedEpisodeData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedEpisodeData {
  List<Episode> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link> get links =>
      throw _privateConstructorUsedError; // Assuming Link model is already defined in podcast.dart
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedEpisodeDataCopyWith<PaginatedEpisodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedEpisodeDataCopyWith<$Res> {
  factory $PaginatedEpisodeDataCopyWith(PaginatedEpisodeData value,
          $Res Function(PaginatedEpisodeData) then) =
      _$PaginatedEpisodeDataCopyWithImpl<$Res, PaginatedEpisodeData>;
  @useResult
  $Res call(
      {List<Episode> data,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int from,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<Link> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String path,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int to,
      int total});
}

/// @nodoc
class _$PaginatedEpisodeDataCopyWithImpl<$Res,
        $Val extends PaginatedEpisodeData>
    implements $PaginatedEpisodeDataCopyWith<$Res> {
  _$PaginatedEpisodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? firstPageUrl = freezed,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = freezed,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedEpisodeDataImplCopyWith<$Res>
    implements $PaginatedEpisodeDataCopyWith<$Res> {
  factory _$$PaginatedEpisodeDataImplCopyWith(_$PaginatedEpisodeDataImpl value,
          $Res Function(_$PaginatedEpisodeDataImpl) then) =
      __$$PaginatedEpisodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Episode> data,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int from,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<Link> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String path,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int to,
      int total});
}

/// @nodoc
class __$$PaginatedEpisodeDataImplCopyWithImpl<$Res>
    extends _$PaginatedEpisodeDataCopyWithImpl<$Res, _$PaginatedEpisodeDataImpl>
    implements _$$PaginatedEpisodeDataImplCopyWith<$Res> {
  __$$PaginatedEpisodeDataImplCopyWithImpl(_$PaginatedEpisodeDataImpl _value,
      $Res Function(_$PaginatedEpisodeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? firstPageUrl = freezed,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = freezed,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$PaginatedEpisodeDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedEpisodeDataImpl
    with DiagnosticableTreeMixin
    implements _PaginatedEpisodeData {
  const _$PaginatedEpisodeDataImpl(
      {required final List<Episode> data,
      @JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      required this.from,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      required final List<Link> links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'path') required this.path,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      required this.to,
      required this.total})
      : _data = data,
        _links = links;

  factory _$PaginatedEpisodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedEpisodeDataImplFromJson(json);

  final List<Episode> _data;
  @override
  List<Episode> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int from;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<Link> _links;
  @override
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

// Assuming Link model is already defined in podcast.dart
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  @JsonKey(name: 'path')
  final String path;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int to;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedEpisodeData(data: $data, currentPage: $currentPage, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedEpisodeData'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('lastPageUrl', lastPageUrl))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedEpisodeDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedEpisodeDataImplCopyWith<_$PaginatedEpisodeDataImpl>
      get copyWith =>
          __$$PaginatedEpisodeDataImplCopyWithImpl<_$PaginatedEpisodeDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedEpisodeDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedEpisodeData implements PaginatedEpisodeData {
  const factory _PaginatedEpisodeData(
      {required final List<Episode> data,
      @JsonKey(name: 'current_page') required final int currentPage,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      required final int from,
      @JsonKey(name: 'last_page') required final int lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      required final List<Link> links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      @JsonKey(name: 'path') required final String path,
      @JsonKey(name: 'per_page') required final int perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      required final int to,
      required final int total}) = _$PaginatedEpisodeDataImpl;

  factory _PaginatedEpisodeData.fromJson(Map<String, dynamic> json) =
      _$PaginatedEpisodeDataImpl.fromJson;

  @override
  List<Episode> get data;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int get from;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<Link> get links;
  @override // Assuming Link model is already defined in podcast.dart
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  @JsonKey(name: 'path')
  String get path;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedEpisodeDataImplCopyWith<_$PaginatedEpisodeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EpisodeDetailsResponse _$EpisodeDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _EpisodeDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$EpisodeDetailsResponse {
  String get message => throw _privateConstructorUsedError;
  EpisodeDetailsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeDetailsResponseCopyWith<EpisodeDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDetailsResponseCopyWith<$Res> {
  factory $EpisodeDetailsResponseCopyWith(EpisodeDetailsResponse value,
          $Res Function(EpisodeDetailsResponse) then) =
      _$EpisodeDetailsResponseCopyWithImpl<$Res, EpisodeDetailsResponse>;
  @useResult
  $Res call({String message, EpisodeDetailsData data});

  $EpisodeDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EpisodeDetailsResponseCopyWithImpl<$Res,
        $Val extends EpisodeDetailsResponse>
    implements $EpisodeDetailsResponseCopyWith<$Res> {
  _$EpisodeDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EpisodeDetailsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeDetailsDataCopyWith<$Res> get data {
    return $EpisodeDetailsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeDetailsResponseImplCopyWith<$Res>
    implements $EpisodeDetailsResponseCopyWith<$Res> {
  factory _$$EpisodeDetailsResponseImplCopyWith(
          _$EpisodeDetailsResponseImpl value,
          $Res Function(_$EpisodeDetailsResponseImpl) then) =
      __$$EpisodeDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, EpisodeDetailsData data});

  @override
  $EpisodeDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EpisodeDetailsResponseImplCopyWithImpl<$Res>
    extends _$EpisodeDetailsResponseCopyWithImpl<$Res,
        _$EpisodeDetailsResponseImpl>
    implements _$$EpisodeDetailsResponseImplCopyWith<$Res> {
  __$$EpisodeDetailsResponseImplCopyWithImpl(
      _$EpisodeDetailsResponseImpl _value,
      $Res Function(_$EpisodeDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EpisodeDetailsResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EpisodeDetailsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeDetailsResponseImpl
    with DiagnosticableTreeMixin
    implements _EpisodeDetailsResponse {
  const _$EpisodeDetailsResponseImpl(
      {required this.message, required this.data});

  factory _$EpisodeDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeDetailsResponseImplFromJson(json);

  @override
  final String message;
  @override
  final EpisodeDetailsData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeDetailsResponse(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeDetailsResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDetailsResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDetailsResponseImplCopyWith<_$EpisodeDetailsResponseImpl>
      get copyWith => __$$EpisodeDetailsResponseImplCopyWithImpl<
          _$EpisodeDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _EpisodeDetailsResponse implements EpisodeDetailsResponse {
  const factory _EpisodeDetailsResponse(
      {required final String message,
      required final EpisodeDetailsData data}) = _$EpisodeDetailsResponseImpl;

  factory _EpisodeDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$EpisodeDetailsResponseImpl.fromJson;

  @override
  String get message;
  @override
  EpisodeDetailsData get data;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeDetailsResponseImplCopyWith<_$EpisodeDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EpisodeDetailsData _$EpisodeDetailsDataFromJson(Map<String, dynamic> json) {
  return _EpisodeDetailsData.fromJson(json);
}

/// @nodoc
mixin _$EpisodeDetailsData {
  String get message => throw _privateConstructorUsedError;
  Episode get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeDetailsDataCopyWith<EpisodeDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDetailsDataCopyWith<$Res> {
  factory $EpisodeDetailsDataCopyWith(
          EpisodeDetailsData value, $Res Function(EpisodeDetailsData) then) =
      _$EpisodeDetailsDataCopyWithImpl<$Res, EpisodeDetailsData>;
  @useResult
  $Res call({String message, Episode data});

  $EpisodeCopyWith<$Res> get data;
}

/// @nodoc
class _$EpisodeDetailsDataCopyWithImpl<$Res, $Val extends EpisodeDetailsData>
    implements $EpisodeDetailsDataCopyWith<$Res> {
  _$EpisodeDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Episode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res> get data {
    return $EpisodeCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeDetailsDataImplCopyWith<$Res>
    implements $EpisodeDetailsDataCopyWith<$Res> {
  factory _$$EpisodeDetailsDataImplCopyWith(_$EpisodeDetailsDataImpl value,
          $Res Function(_$EpisodeDetailsDataImpl) then) =
      __$$EpisodeDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Episode data});

  @override
  $EpisodeCopyWith<$Res> get data;
}

/// @nodoc
class __$$EpisodeDetailsDataImplCopyWithImpl<$Res>
    extends _$EpisodeDetailsDataCopyWithImpl<$Res, _$EpisodeDetailsDataImpl>
    implements _$$EpisodeDetailsDataImplCopyWith<$Res> {
  __$$EpisodeDetailsDataImplCopyWithImpl(_$EpisodeDetailsDataImpl _value,
      $Res Function(_$EpisodeDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EpisodeDetailsDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Episode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeDetailsDataImpl
    with DiagnosticableTreeMixin
    implements _EpisodeDetailsData {
  const _$EpisodeDetailsDataImpl({required this.message, required this.data});

  factory _$EpisodeDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeDetailsDataImplFromJson(json);

  @override
  final String message;
  @override
  final Episode data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeDetailsData(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeDetailsData'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDetailsDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDetailsDataImplCopyWith<_$EpisodeDetailsDataImpl> get copyWith =>
      __$$EpisodeDetailsDataImplCopyWithImpl<_$EpisodeDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _EpisodeDetailsData implements EpisodeDetailsData {
  const factory _EpisodeDetailsData(
      {required final String message,
      required final Episode data}) = _$EpisodeDetailsDataImpl;

  factory _EpisodeDetailsData.fromJson(Map<String, dynamic> json) =
      _$EpisodeDetailsDataImpl.fromJson;

  @override
  String get message;
  @override
  Episode get data;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeDetailsDataImplCopyWith<_$EpisodeDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
