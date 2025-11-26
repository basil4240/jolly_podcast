// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Podcast _$PodcastFromJson(Map<String, dynamic> json) {
  return _Podcast.fromJson(json);
}

/// @nodoc
mixin _$Podcast {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_type')
  String? get categoryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String get pictureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_picture_url')
  String? get coverPictureUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_subscribed')
  bool get isSubscribed => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriber_count')
  int? get subscriberCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastCopyWith<Podcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastCopyWith<$Res> {
  factory $PodcastCopyWith(Podcast value, $Res Function(Podcast) then) =
      _$PodcastCopyWithImpl<$Res, Podcast>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String title,
      String author,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_type') String? categoryType,
      @JsonKey(name: 'picture_url') String pictureUrl,
      @JsonKey(name: 'cover_picture_url') String? coverPictureUrl,
      String description,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_subscribed') bool isSubscribed,
      @JsonKey(name: 'subscriber_count') int? subscriberCount});
}

/// @nodoc
class _$PodcastCopyWithImpl<$Res, $Val extends Podcast>
    implements $PodcastCopyWith<$Res> {
  _$PodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = null,
    Object? categoryName = freezed,
    Object? categoryType = freezed,
    Object? pictureUrl = null,
    Object? coverPictureUrl = freezed,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isSubscribed = null,
    Object? subscriberCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPictureUrl: freezed == coverPictureUrl
          ? _value.coverPictureUrl
          : coverPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriberCount: freezed == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastImplCopyWith<$Res> implements $PodcastCopyWith<$Res> {
  factory _$$PodcastImplCopyWith(
          _$PodcastImpl value, $Res Function(_$PodcastImpl) then) =
      __$$PodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String title,
      String author,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_type') String? categoryType,
      @JsonKey(name: 'picture_url') String pictureUrl,
      @JsonKey(name: 'cover_picture_url') String? coverPictureUrl,
      String description,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_subscribed') bool isSubscribed,
      @JsonKey(name: 'subscriber_count') int? subscriberCount});
}

/// @nodoc
class __$$PodcastImplCopyWithImpl<$Res>
    extends _$PodcastCopyWithImpl<$Res, _$PodcastImpl>
    implements _$$PodcastImplCopyWith<$Res> {
  __$$PodcastImplCopyWithImpl(
      _$PodcastImpl _value, $Res Function(_$PodcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = null,
    Object? categoryName = freezed,
    Object? categoryType = freezed,
    Object? pictureUrl = null,
    Object? coverPictureUrl = freezed,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isSubscribed = null,
    Object? subscriberCount = freezed,
  }) {
    return _then(_$PodcastImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPictureUrl: freezed == coverPictureUrl
          ? _value.coverPictureUrl
          : coverPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriberCount: freezed == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastImpl with DiagnosticableTreeMixin implements _Podcast {
  const _$PodcastImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.title,
      required this.author,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'category_type') this.categoryType,
      @JsonKey(name: 'picture_url') required this.pictureUrl,
      @JsonKey(name: 'cover_picture_url') this.coverPictureUrl,
      required this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_subscribed') this.isSubscribed = false,
      @JsonKey(name: 'subscriber_count') this.subscriberCount});

  factory _$PodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String title;
  @override
  final String author;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'category_type')
  final String? categoryType;
  @override
  @JsonKey(name: 'picture_url')
  final String pictureUrl;
  @override
  @JsonKey(name: 'cover_picture_url')
  final String? coverPictureUrl;
  @override
  final String description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'is_subscribed')
  final bool isSubscribed;
  @override
  @JsonKey(name: 'subscriber_count')
  final int? subscriberCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Podcast(id: $id, userId: $userId, title: $title, author: $author, categoryName: $categoryName, categoryType: $categoryType, pictureUrl: $pictureUrl, coverPictureUrl: $coverPictureUrl, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, isSubscribed: $isSubscribed, subscriberCount: $subscriberCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Podcast'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('categoryName', categoryName))
      ..add(DiagnosticsProperty('categoryType', categoryType))
      ..add(DiagnosticsProperty('pictureUrl', pictureUrl))
      ..add(DiagnosticsProperty('coverPictureUrl', coverPictureUrl))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('isSubscribed', isSubscribed))
      ..add(DiagnosticsProperty('subscriberCount', subscriberCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.coverPictureUrl, coverPictureUrl) ||
                other.coverPictureUrl == coverPictureUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      author,
      categoryName,
      categoryType,
      pictureUrl,
      coverPictureUrl,
      description,
      createdAt,
      updatedAt,
      isSubscribed,
      subscriberCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastImplCopyWith<_$PodcastImpl> get copyWith =>
      __$$PodcastImplCopyWithImpl<_$PodcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastImplToJson(
      this,
    );
  }
}

abstract class _Podcast implements Podcast {
  const factory _Podcast(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          required final String title,
          required final String author,
          @JsonKey(name: 'category_name') final String? categoryName,
          @JsonKey(name: 'category_type') final String? categoryType,
          @JsonKey(name: 'picture_url') required final String pictureUrl,
          @JsonKey(name: 'cover_picture_url') final String? coverPictureUrl,
          required final String description,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'is_subscribed') final bool isSubscribed,
          @JsonKey(name: 'subscriber_count') final int? subscriberCount}) =
      _$PodcastImpl;

  factory _Podcast.fromJson(Map<String, dynamic> json) = _$PodcastImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get title;
  @override
  String get author;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(name: 'category_type')
  String? get categoryType;
  @override
  @JsonKey(name: 'picture_url')
  String get pictureUrl;
  @override
  @JsonKey(name: 'cover_picture_url')
  String? get coverPictureUrl;
  @override
  String get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'is_subscribed')
  bool get isSubscribed;
  @override
  @JsonKey(name: 'subscriber_count')
  int? get subscriberCount;
  @override
  @JsonKey(ignore: true)
  _$$PodcastImplCopyWith<_$PodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Publisher _$PublisherFromJson(Map<String, dynamic> json) {
  return _Publisher.fromJson(json);
}

/// @nodoc
mixin _$Publisher {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherCopyWith<Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherCopyWith<$Res> {
  factory $PublisherCopyWith(Publisher value, $Res Function(Publisher) then) =
      _$PublisherCopyWithImpl<$Res, Publisher>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'company_name') String companyName,
      String email,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$PublisherCopyWithImpl<$Res, $Val extends Publisher>
    implements $PublisherCopyWith<$Res> {
  _$PublisherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? companyName = null,
    Object? email = null,
    Object? profileImageUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublisherImplCopyWith<$Res>
    implements $PublisherCopyWith<$Res> {
  factory _$$PublisherImplCopyWith(
          _$PublisherImpl value, $Res Function(_$PublisherImpl) then) =
      __$$PublisherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'company_name') String companyName,
      String email,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$PublisherImplCopyWithImpl<$Res>
    extends _$PublisherCopyWithImpl<$Res, _$PublisherImpl>
    implements _$$PublisherImplCopyWith<$Res> {
  __$$PublisherImplCopyWithImpl(
      _$PublisherImpl _value, $Res Function(_$PublisherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? companyName = null,
    Object? email = null,
    Object? profileImageUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PublisherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublisherImpl with DiagnosticableTreeMixin implements _Publisher {
  const _$PublisherImpl(
      {required this.id,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'company_name') required this.companyName,
      required this.email,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$PublisherImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublisherImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String email;
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Publisher(id: $id, firstName: $firstName, lastName: $lastName, companyName: $companyName, email: $email, profileImageUrl: $profileImageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Publisher'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublisherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      companyName, email, profileImageUrl, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublisherImplCopyWith<_$PublisherImpl> get copyWith =>
      __$$PublisherImplCopyWithImpl<_$PublisherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublisherImplToJson(
      this,
    );
  }
}

abstract class _Publisher implements Publisher {
  const factory _Publisher(
          {required final int id,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'company_name') required final String companyName,
          required final String email,
          @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$PublisherImpl;

  factory _Publisher.fromJson(Map<String, dynamic> json) =
      _$PublisherImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get email;
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PublisherImplCopyWith<_$PublisherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastListResponse _$PodcastListResponseFromJson(Map<String, dynamic> json) {
  return _PodcastListResponse.fromJson(json);
}

/// @nodoc
mixin _$PodcastListResponse {
  String get message => throw _privateConstructorUsedError;
  PodcastResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastListResponseCopyWith<PodcastListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastListResponseCopyWith<$Res> {
  factory $PodcastListResponseCopyWith(
          PodcastListResponse value, $Res Function(PodcastListResponse) then) =
      _$PodcastListResponseCopyWithImpl<$Res, PodcastListResponse>;
  @useResult
  $Res call({String message, PodcastResponseData data});

  $PodcastResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PodcastListResponseCopyWithImpl<$Res, $Val extends PodcastListResponse>
    implements $PodcastListResponseCopyWith<$Res> {
  _$PodcastListResponseCopyWithImpl(this._value, this._then);

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
              as PodcastResponseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastResponseDataCopyWith<$Res> get data {
    return $PodcastResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PodcastListResponseImplCopyWith<$Res>
    implements $PodcastListResponseCopyWith<$Res> {
  factory _$$PodcastListResponseImplCopyWith(_$PodcastListResponseImpl value,
          $Res Function(_$PodcastListResponseImpl) then) =
      __$$PodcastListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, PodcastResponseData data});

  @override
  $PodcastResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PodcastListResponseImplCopyWithImpl<$Res>
    extends _$PodcastListResponseCopyWithImpl<$Res, _$PodcastListResponseImpl>
    implements _$$PodcastListResponseImplCopyWith<$Res> {
  __$$PodcastListResponseImplCopyWithImpl(_$PodcastListResponseImpl _value,
      $Res Function(_$PodcastListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$PodcastListResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PodcastResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastListResponseImpl
    with DiagnosticableTreeMixin
    implements _PodcastListResponse {
  const _$PodcastListResponseImpl({required this.message, required this.data});

  factory _$PodcastListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastListResponseImplFromJson(json);

  @override
  final String message;
  @override
  final PodcastResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PodcastListResponse(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PodcastListResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastListResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastListResponseImplCopyWith<_$PodcastListResponseImpl> get copyWith =>
      __$$PodcastListResponseImplCopyWithImpl<_$PodcastListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastListResponseImplToJson(
      this,
    );
  }
}

abstract class _PodcastListResponse implements PodcastListResponse {
  const factory _PodcastListResponse(
      {required final String message,
      required final PodcastResponseData data}) = _$PodcastListResponseImpl;

  factory _PodcastListResponse.fromJson(Map<String, dynamic> json) =
      _$PodcastListResponseImpl.fromJson;

  @override
  String get message;
  @override
  PodcastResponseData get data;
  @override
  @JsonKey(ignore: true)
  _$$PodcastListResponseImplCopyWith<_$PodcastListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastResponseData _$PodcastResponseDataFromJson(Map<String, dynamic> json) {
  return _PodcastResponseData.fromJson(json);
}

/// @nodoc
mixin _$PodcastResponseData {
  String get message => throw _privateConstructorUsedError;
  PaginatedPodcastData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastResponseDataCopyWith<PodcastResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastResponseDataCopyWith<$Res> {
  factory $PodcastResponseDataCopyWith(
          PodcastResponseData value, $Res Function(PodcastResponseData) then) =
      _$PodcastResponseDataCopyWithImpl<$Res, PodcastResponseData>;
  @useResult
  $Res call({String message, PaginatedPodcastData data});

  $PaginatedPodcastDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PodcastResponseDataCopyWithImpl<$Res, $Val extends PodcastResponseData>
    implements $PodcastResponseDataCopyWith<$Res> {
  _$PodcastResponseDataCopyWithImpl(this._value, this._then);

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
              as PaginatedPodcastData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedPodcastDataCopyWith<$Res> get data {
    return $PaginatedPodcastDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PodcastResponseDataImplCopyWith<$Res>
    implements $PodcastResponseDataCopyWith<$Res> {
  factory _$$PodcastResponseDataImplCopyWith(_$PodcastResponseDataImpl value,
          $Res Function(_$PodcastResponseDataImpl) then) =
      __$$PodcastResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, PaginatedPodcastData data});

  @override
  $PaginatedPodcastDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PodcastResponseDataImplCopyWithImpl<$Res>
    extends _$PodcastResponseDataCopyWithImpl<$Res, _$PodcastResponseDataImpl>
    implements _$$PodcastResponseDataImplCopyWith<$Res> {
  __$$PodcastResponseDataImplCopyWithImpl(_$PodcastResponseDataImpl _value,
      $Res Function(_$PodcastResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$PodcastResponseDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedPodcastData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastResponseDataImpl
    with DiagnosticableTreeMixin
    implements _PodcastResponseData {
  const _$PodcastResponseDataImpl({required this.message, required this.data});

  factory _$PodcastResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastResponseDataImplFromJson(json);

  @override
  final String message;
  @override
  final PaginatedPodcastData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PodcastResponseData(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PodcastResponseData'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastResponseDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastResponseDataImplCopyWith<_$PodcastResponseDataImpl> get copyWith =>
      __$$PodcastResponseDataImplCopyWithImpl<_$PodcastResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PodcastResponseData implements PodcastResponseData {
  const factory _PodcastResponseData(
      {required final String message,
      required final PaginatedPodcastData data}) = _$PodcastResponseDataImpl;

  factory _PodcastResponseData.fromJson(Map<String, dynamic> json) =
      _$PodcastResponseDataImpl.fromJson;

  @override
  String get message;
  @override
  PaginatedPodcastData get data;
  @override
  @JsonKey(ignore: true)
  _$$PodcastResponseDataImplCopyWith<_$PodcastResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedPodcastData _$PaginatedPodcastDataFromJson(Map<String, dynamic> json) {
  return _PaginatedPodcastData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedPodcastData {
  List<Podcast> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedPodcastDataCopyWith<PaginatedPodcastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPodcastDataCopyWith<$Res> {
  factory $PaginatedPodcastDataCopyWith(PaginatedPodcastData value,
          $Res Function(PaginatedPodcastData) then) =
      _$PaginatedPodcastDataCopyWithImpl<$Res, PaginatedPodcastData>;
  @useResult
  $Res call(
      {List<Podcast> data,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int total});
}

/// @nodoc
class _$PaginatedPodcastDataCopyWithImpl<$Res,
        $Val extends PaginatedPodcastData>
    implements $PaginatedPodcastDataCopyWith<$Res> {
  _$PaginatedPodcastDataCopyWithImpl(this._value, this._then);

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
    Object? lastPage = null,
    Object? lastPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Podcast>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedPodcastDataImplCopyWith<$Res>
    implements $PaginatedPodcastDataCopyWith<$Res> {
  factory _$$PaginatedPodcastDataImplCopyWith(_$PaginatedPodcastDataImpl value,
          $Res Function(_$PaginatedPodcastDataImpl) then) =
      __$$PaginatedPodcastDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Podcast> data,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int total});
}

/// @nodoc
class __$$PaginatedPodcastDataImplCopyWithImpl<$Res>
    extends _$PaginatedPodcastDataCopyWithImpl<$Res, _$PaginatedPodcastDataImpl>
    implements _$$PaginatedPodcastDataImplCopyWith<$Res> {
  __$$PaginatedPodcastDataImplCopyWithImpl(_$PaginatedPodcastDataImpl _value,
      $Res Function(_$PaginatedPodcastDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? firstPageUrl = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? total = null,
  }) {
    return _then(_$PaginatedPodcastDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Podcast>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedPodcastDataImpl
    with DiagnosticableTreeMixin
    implements _PaginatedPodcastData {
  const _$PaginatedPodcastDataImpl(
      {required final List<Podcast> data,
      @JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      required this.total})
      : _data = data;

  factory _$PaginatedPodcastDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedPodcastDataImplFromJson(json);

  final List<Podcast> _data;
  @override
  List<Podcast> get data {
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
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedPodcastData(data: $data, currentPage: $currentPage, firstPageUrl: $firstPageUrl, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedPodcastData'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('lastPageUrl', lastPageUrl))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedPodcastDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      firstPageUrl,
      lastPage,
      lastPageUrl,
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedPodcastDataImplCopyWith<_$PaginatedPodcastDataImpl>
      get copyWith =>
          __$$PaginatedPodcastDataImplCopyWithImpl<_$PaginatedPodcastDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedPodcastDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedPodcastData implements PaginatedPodcastData {
  const factory _PaginatedPodcastData(
      {required final List<Podcast> data,
      @JsonKey(name: 'current_page') required final int currentPage,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      @JsonKey(name: 'last_page') required final int lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      required final int total}) = _$PaginatedPodcastDataImpl;

  factory _PaginatedPodcastData.fromJson(Map<String, dynamic> json) =
      _$PaginatedPodcastDataImpl.fromJson;

  @override
  List<Podcast> get data;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedPodcastDataImplCopyWith<_$PaginatedPodcastDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl with DiagnosticableTreeMixin implements _Link {
  const _$LinkImpl({this.url, required this.label, required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String label;
  @override
  final bool active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Link'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url,
      required final String label,
      required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmbeddablePlayerSettings _$EmbeddablePlayerSettingsFromJson(
    Map<String, dynamic> json) {
  return _EmbeddablePlayerSettings.fromJson(json);
}

/// @nodoc
mixin _$EmbeddablePlayerSettings {
  Player get player => throw _privateConstructorUsedError;
  Features get features => throw _privateConstructorUsedError;
  Playlists get playlists => throw _privateConstructorUsedError;
  @JsonKey(name: 'elements_visiblity')
  ElementsVisibility get elementsVisibility =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbeddablePlayerSettingsCopyWith<EmbeddablePlayerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddablePlayerSettingsCopyWith<$Res> {
  factory $EmbeddablePlayerSettingsCopyWith(EmbeddablePlayerSettings value,
          $Res Function(EmbeddablePlayerSettings) then) =
      _$EmbeddablePlayerSettingsCopyWithImpl<$Res, EmbeddablePlayerSettings>;
  @useResult
  $Res call(
      {Player player,
      Features features,
      Playlists playlists,
      @JsonKey(name: 'elements_visiblity')
      ElementsVisibility elementsVisibility});

  $PlayerCopyWith<$Res> get player;
  $FeaturesCopyWith<$Res> get features;
  $PlaylistsCopyWith<$Res> get playlists;
  $ElementsVisibilityCopyWith<$Res> get elementsVisibility;
}

/// @nodoc
class _$EmbeddablePlayerSettingsCopyWithImpl<$Res,
        $Val extends EmbeddablePlayerSettings>
    implements $EmbeddablePlayerSettingsCopyWith<$Res> {
  _$EmbeddablePlayerSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? features = null,
    Object? playlists = null,
    Object? elementsVisibility = null,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Features,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists,
      elementsVisibility: null == elementsVisibility
          ? _value.elementsVisibility
          : elementsVisibility // ignore: cast_nullable_to_non_nullable
              as ElementsVisibility,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeaturesCopyWith<$Res> get features {
    return $FeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistsCopyWith<$Res> get playlists {
    return $PlaylistsCopyWith<$Res>(_value.playlists, (value) {
      return _then(_value.copyWith(playlists: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ElementsVisibilityCopyWith<$Res> get elementsVisibility {
    return $ElementsVisibilityCopyWith<$Res>(_value.elementsVisibility,
        (value) {
      return _then(_value.copyWith(elementsVisibility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmbeddablePlayerSettingsImplCopyWith<$Res>
    implements $EmbeddablePlayerSettingsCopyWith<$Res> {
  factory _$$EmbeddablePlayerSettingsImplCopyWith(
          _$EmbeddablePlayerSettingsImpl value,
          $Res Function(_$EmbeddablePlayerSettingsImpl) then) =
      __$$EmbeddablePlayerSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Player player,
      Features features,
      Playlists playlists,
      @JsonKey(name: 'elements_visiblity')
      ElementsVisibility elementsVisibility});

  @override
  $PlayerCopyWith<$Res> get player;
  @override
  $FeaturesCopyWith<$Res> get features;
  @override
  $PlaylistsCopyWith<$Res> get playlists;
  @override
  $ElementsVisibilityCopyWith<$Res> get elementsVisibility;
}

/// @nodoc
class __$$EmbeddablePlayerSettingsImplCopyWithImpl<$Res>
    extends _$EmbeddablePlayerSettingsCopyWithImpl<$Res,
        _$EmbeddablePlayerSettingsImpl>
    implements _$$EmbeddablePlayerSettingsImplCopyWith<$Res> {
  __$$EmbeddablePlayerSettingsImplCopyWithImpl(
      _$EmbeddablePlayerSettingsImpl _value,
      $Res Function(_$EmbeddablePlayerSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? features = null,
    Object? playlists = null,
    Object? elementsVisibility = null,
  }) {
    return _then(_$EmbeddablePlayerSettingsImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Features,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists,
      elementsVisibility: null == elementsVisibility
          ? _value.elementsVisibility
          : elementsVisibility // ignore: cast_nullable_to_non_nullable
              as ElementsVisibility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbeddablePlayerSettingsImpl
    with DiagnosticableTreeMixin
    implements _EmbeddablePlayerSettings {
  const _$EmbeddablePlayerSettingsImpl(
      {required this.player,
      required this.features,
      required this.playlists,
      @JsonKey(name: 'elements_visiblity') required this.elementsVisibility});

  factory _$EmbeddablePlayerSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbeddablePlayerSettingsImplFromJson(json);

  @override
  final Player player;
  @override
  final Features features;
  @override
  final Playlists playlists;
  @override
  @JsonKey(name: 'elements_visiblity')
  final ElementsVisibility elementsVisibility;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmbeddablePlayerSettings(player: $player, features: $features, playlists: $playlists, elementsVisibility: $elementsVisibility)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmbeddablePlayerSettings'))
      ..add(DiagnosticsProperty('player', player))
      ..add(DiagnosticsProperty('features', features))
      ..add(DiagnosticsProperty('playlists', playlists))
      ..add(DiagnosticsProperty('elementsVisibility', elementsVisibility));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddablePlayerSettingsImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.playlists, playlists) ||
                other.playlists == playlists) &&
            (identical(other.elementsVisibility, elementsVisibility) ||
                other.elementsVisibility == elementsVisibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, player, features, playlists, elementsVisibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddablePlayerSettingsImplCopyWith<_$EmbeddablePlayerSettingsImpl>
      get copyWith => __$$EmbeddablePlayerSettingsImplCopyWithImpl<
          _$EmbeddablePlayerSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbeddablePlayerSettingsImplToJson(
      this,
    );
  }
}

abstract class _EmbeddablePlayerSettings implements EmbeddablePlayerSettings {
  const factory _EmbeddablePlayerSettings(
          {required final Player player,
          required final Features features,
          required final Playlists playlists,
          @JsonKey(name: 'elements_visiblity')
          required final ElementsVisibility elementsVisibility}) =
      _$EmbeddablePlayerSettingsImpl;

  factory _EmbeddablePlayerSettings.fromJson(Map<String, dynamic> json) =
      _$EmbeddablePlayerSettingsImpl.fromJson;

  @override
  Player get player;
  @override
  Features get features;
  @override
  Playlists get playlists;
  @override
  @JsonKey(name: 'elements_visiblity')
  ElementsVisibility get elementsVisibility;
  @override
  @JsonKey(ignore: true)
  _$$EmbeddablePlayerSettingsImplCopyWith<_$EmbeddablePlayerSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String get size => throw _privateConstructorUsedError;
  String? get theme => throw _privateConstructorUsedError;
  String get width => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_color')
  String get mainColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {String size,
      String? theme,
      String width,
      String height,
      @JsonKey(name: 'main_color') String mainColor});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? theme = freezed,
    Object? width = null,
    Object? height = null,
    Object? mainColor = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String size,
      String? theme,
      String width,
      String height,
      @JsonKey(name: 'main_color') String mainColor});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? theme = freezed,
    Object? width = null,
    Object? height = null,
    Object? mainColor = null,
  }) {
    return _then(_$PlayerImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl with DiagnosticableTreeMixin implements _Player {
  const _$PlayerImpl(
      {required this.size,
      this.theme,
      required this.width,
      required this.height,
      @JsonKey(name: 'main_color') required this.mainColor});

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  final String size;
  @override
  final String? theme;
  @override
  final String width;
  @override
  final String height;
  @override
  @JsonKey(name: 'main_color')
  final String mainColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Player(size: $size, theme: $theme, width: $width, height: $height, mainColor: $mainColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Player'))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('mainColor', mainColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, size, theme, width, height, mainColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
          {required final String size,
          final String? theme,
          required final String width,
          required final String height,
          @JsonKey(name: 'main_color') required final String mainColor}) =
      _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  String get size;
  @override
  String? get theme;
  @override
  String get width;
  @override
  String get height;
  @override
  @JsonKey(name: 'main_color')
  String get mainColor;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Features _$FeaturesFromJson(Map<String, dynamic> json) {
  return _Features.fromJson(json);
}

/// @nodoc
mixin _$Features {
  @JsonKey(name: 'info_icon')
  bool get infoIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_button')
  bool get followButton => throw _privateConstructorUsedError;
  @JsonKey(name: 'give_tip_button')
  bool get giveTipButton => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturesCopyWith<Features> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesCopyWith<$Res> {
  factory $FeaturesCopyWith(Features value, $Res Function(Features) then) =
      _$FeaturesCopyWithImpl<$Res, Features>;
  @useResult
  $Res call(
      {@JsonKey(name: 'info_icon') bool infoIcon,
      @JsonKey(name: 'follow_button') bool followButton,
      @JsonKey(name: 'give_tip_button') bool giveTipButton});
}

/// @nodoc
class _$FeaturesCopyWithImpl<$Res, $Val extends Features>
    implements $FeaturesCopyWith<$Res> {
  _$FeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infoIcon = null,
    Object? followButton = null,
    Object? giveTipButton = null,
  }) {
    return _then(_value.copyWith(
      infoIcon: null == infoIcon
          ? _value.infoIcon
          : infoIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      followButton: null == followButton
          ? _value.followButton
          : followButton // ignore: cast_nullable_to_non_nullable
              as bool,
      giveTipButton: null == giveTipButton
          ? _value.giveTipButton
          : giveTipButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturesImplCopyWith<$Res>
    implements $FeaturesCopyWith<$Res> {
  factory _$$FeaturesImplCopyWith(
          _$FeaturesImpl value, $Res Function(_$FeaturesImpl) then) =
      __$$FeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'info_icon') bool infoIcon,
      @JsonKey(name: 'follow_button') bool followButton,
      @JsonKey(name: 'give_tip_button') bool giveTipButton});
}

/// @nodoc
class __$$FeaturesImplCopyWithImpl<$Res>
    extends _$FeaturesCopyWithImpl<$Res, _$FeaturesImpl>
    implements _$$FeaturesImplCopyWith<$Res> {
  __$$FeaturesImplCopyWithImpl(
      _$FeaturesImpl _value, $Res Function(_$FeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infoIcon = null,
    Object? followButton = null,
    Object? giveTipButton = null,
  }) {
    return _then(_$FeaturesImpl(
      infoIcon: null == infoIcon
          ? _value.infoIcon
          : infoIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      followButton: null == followButton
          ? _value.followButton
          : followButton // ignore: cast_nullable_to_non_nullable
              as bool,
      giveTipButton: null == giveTipButton
          ? _value.giveTipButton
          : giveTipButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturesImpl with DiagnosticableTreeMixin implements _Features {
  const _$FeaturesImpl(
      {@JsonKey(name: 'info_icon') required this.infoIcon,
      @JsonKey(name: 'follow_button') required this.followButton,
      @JsonKey(name: 'give_tip_button') required this.giveTipButton});

  factory _$FeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturesImplFromJson(json);

  @override
  @JsonKey(name: 'info_icon')
  final bool infoIcon;
  @override
  @JsonKey(name: 'follow_button')
  final bool followButton;
  @override
  @JsonKey(name: 'give_tip_button')
  final bool giveTipButton;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Features(infoIcon: $infoIcon, followButton: $followButton, giveTipButton: $giveTipButton)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Features'))
      ..add(DiagnosticsProperty('infoIcon', infoIcon))
      ..add(DiagnosticsProperty('followButton', followButton))
      ..add(DiagnosticsProperty('giveTipButton', giveTipButton));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturesImpl &&
            (identical(other.infoIcon, infoIcon) ||
                other.infoIcon == infoIcon) &&
            (identical(other.followButton, followButton) ||
                other.followButton == followButton) &&
            (identical(other.giveTipButton, giveTipButton) ||
                other.giveTipButton == giveTipButton));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, infoIcon, followButton, giveTipButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturesImplCopyWith<_$FeaturesImpl> get copyWith =>
      __$$FeaturesImplCopyWithImpl<_$FeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturesImplToJson(
      this,
    );
  }
}

abstract class _Features implements Features {
  const factory _Features(
      {@JsonKey(name: 'info_icon') required final bool infoIcon,
      @JsonKey(name: 'follow_button') required final bool followButton,
      @JsonKey(name: 'give_tip_button')
      required final bool giveTipButton}) = _$FeaturesImpl;

  factory _Features.fromJson(Map<String, dynamic> json) =
      _$FeaturesImpl.fromJson;

  @override
  @JsonKey(name: 'info_icon')
  bool get infoIcon;
  @override
  @JsonKey(name: 'follow_button')
  bool get followButton;
  @override
  @JsonKey(name: 'give_tip_button')
  bool get giveTipButton;
  @override
  @JsonKey(ignore: true)
  _$$FeaturesImplCopyWith<_$FeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return _Playlists.fromJson(json);
}

/// @nodoc
mixin _$Playlists {
  bool get enabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'play_continuously')
  bool get playContinuously => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistsCopyWith<Playlists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsCopyWith<$Res> {
  factory $PlaylistsCopyWith(Playlists value, $Res Function(Playlists) then) =
      _$PlaylistsCopyWithImpl<$Res, Playlists>;
  @useResult
  $Res call(
      {bool enabled,
      @JsonKey(name: 'play_continuously') bool playContinuously});
}

/// @nodoc
class _$PlaylistsCopyWithImpl<$Res, $Val extends Playlists>
    implements $PlaylistsCopyWith<$Res> {
  _$PlaylistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? playContinuously = null,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      playContinuously: null == playContinuously
          ? _value.playContinuously
          : playContinuously // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistsImplCopyWith<$Res>
    implements $PlaylistsCopyWith<$Res> {
  factory _$$PlaylistsImplCopyWith(
          _$PlaylistsImpl value, $Res Function(_$PlaylistsImpl) then) =
      __$$PlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enabled,
      @JsonKey(name: 'play_continuously') bool playContinuously});
}

/// @nodoc
class __$$PlaylistsImplCopyWithImpl<$Res>
    extends _$PlaylistsCopyWithImpl<$Res, _$PlaylistsImpl>
    implements _$$PlaylistsImplCopyWith<$Res> {
  __$$PlaylistsImplCopyWithImpl(
      _$PlaylistsImpl _value, $Res Function(_$PlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? playContinuously = null,
  }) {
    return _then(_$PlaylistsImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      playContinuously: null == playContinuously
          ? _value.playContinuously
          : playContinuously // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistsImpl with DiagnosticableTreeMixin implements _Playlists {
  const _$PlaylistsImpl(
      {required this.enabled,
      @JsonKey(name: 'play_continuously') required this.playContinuously});

  factory _$PlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistsImplFromJson(json);

  @override
  final bool enabled;
  @override
  @JsonKey(name: 'play_continuously')
  final bool playContinuously;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Playlists(enabled: $enabled, playContinuously: $playContinuously)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Playlists'))
      ..add(DiagnosticsProperty('enabled', enabled))
      ..add(DiagnosticsProperty('playContinuously', playContinuously));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.playContinuously, playContinuously) ||
                other.playContinuously == playContinuously));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, playContinuously);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      __$$PlaylistsImplCopyWithImpl<_$PlaylistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistsImplToJson(
      this,
    );
  }
}

abstract class _Playlists implements Playlists {
  const factory _Playlists(
      {required final bool enabled,
      @JsonKey(name: 'play_continuously')
      required final bool playContinuously}) = _$PlaylistsImpl;

  factory _Playlists.fromJson(Map<String, dynamic> json) =
      _$PlaylistsImpl.fromJson;

  @override
  bool get enabled;
  @override
  @JsonKey(name: 'play_continuously')
  bool get playContinuously;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElementsVisibility _$ElementsVisibilityFromJson(Map<String, dynamic> json) {
  return _ElementsVisibility.fromJson(json);
}

/// @nodoc
mixin _$ElementsVisibility {
  bool get like => throw _privateConstructorUsedError;
  bool get logo => throw _privateConstructorUsedError;
  bool get share => throw _privateConstructorUsedError;
  bool get comments => throw _privateConstructorUsedError;
  bool get download => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementsVisibilityCopyWith<ElementsVisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementsVisibilityCopyWith<$Res> {
  factory $ElementsVisibilityCopyWith(
          ElementsVisibility value, $Res Function(ElementsVisibility) then) =
      _$ElementsVisibilityCopyWithImpl<$Res, ElementsVisibility>;
  @useResult
  $Res call({bool like, bool logo, bool share, bool comments, bool download});
}

/// @nodoc
class _$ElementsVisibilityCopyWithImpl<$Res, $Val extends ElementsVisibility>
    implements $ElementsVisibilityCopyWith<$Res> {
  _$ElementsVisibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? logo = null,
    Object? share = null,
    Object? comments = null,
    Object? download = null,
  }) {
    return _then(_value.copyWith(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as bool,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as bool,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementsVisibilityImplCopyWith<$Res>
    implements $ElementsVisibilityCopyWith<$Res> {
  factory _$$ElementsVisibilityImplCopyWith(_$ElementsVisibilityImpl value,
          $Res Function(_$ElementsVisibilityImpl) then) =
      __$$ElementsVisibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool like, bool logo, bool share, bool comments, bool download});
}

/// @nodoc
class __$$ElementsVisibilityImplCopyWithImpl<$Res>
    extends _$ElementsVisibilityCopyWithImpl<$Res, _$ElementsVisibilityImpl>
    implements _$$ElementsVisibilityImplCopyWith<$Res> {
  __$$ElementsVisibilityImplCopyWithImpl(_$ElementsVisibilityImpl _value,
      $Res Function(_$ElementsVisibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? logo = null,
    Object? share = null,
    Object? comments = null,
    Object? download = null,
  }) {
    return _then(_$ElementsVisibilityImpl(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as bool,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as bool,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementsVisibilityImpl
    with DiagnosticableTreeMixin
    implements _ElementsVisibility {
  const _$ElementsVisibilityImpl(
      {required this.like,
      required this.logo,
      required this.share,
      required this.comments,
      required this.download});

  factory _$ElementsVisibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementsVisibilityImplFromJson(json);

  @override
  final bool like;
  @override
  final bool logo;
  @override
  final bool share;
  @override
  final bool comments;
  @override
  final bool download;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ElementsVisibility(like: $like, logo: $logo, share: $share, comments: $comments, download: $download)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ElementsVisibility'))
      ..add(DiagnosticsProperty('like', like))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('share', share))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('download', download));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementsVisibilityImpl &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.download, download) ||
                other.download == download));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, like, logo, share, comments, download);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementsVisibilityImplCopyWith<_$ElementsVisibilityImpl> get copyWith =>
      __$$ElementsVisibilityImplCopyWithImpl<_$ElementsVisibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementsVisibilityImplToJson(
      this,
    );
  }
}

abstract class _ElementsVisibility implements ElementsVisibility {
  const factory _ElementsVisibility(
      {required final bool like,
      required final bool logo,
      required final bool share,
      required final bool comments,
      required final bool download}) = _$ElementsVisibilityImpl;

  factory _ElementsVisibility.fromJson(Map<String, dynamic> json) =
      _$ElementsVisibilityImpl.fromJson;

  @override
  bool get like;
  @override
  bool get logo;
  @override
  bool get share;
  @override
  bool get comments;
  @override
  bool get download;
  @override
  @JsonKey(ignore: true)
  _$$ElementsVisibilityImplCopyWith<_$ElementsVisibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
