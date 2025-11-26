// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PodcastImpl _$$PodcastImplFromJson(Map<String, dynamic> json) =>
    _$PodcastImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String,
      categoryName: json['category_name'] as String?,
      categoryType: json['category_type'] as String?,
      pictureUrl: json['picture_url'] as String,
      coverPictureUrl: json['cover_picture_url'] as String?,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isSubscribed: json['is_subscribed'] as bool? ?? false,
      subscriberCount: (json['subscriber_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PodcastImplToJson(_$PodcastImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'author': instance.author,
      'category_name': instance.categoryName,
      'category_type': instance.categoryType,
      'picture_url': instance.pictureUrl,
      'cover_picture_url': instance.coverPictureUrl,
      'description': instance.description,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_subscribed': instance.isSubscribed,
      'subscriber_count': instance.subscriberCount,
    };

_$PublisherImpl _$$PublisherImplFromJson(Map<String, dynamic> json) =>
    _$PublisherImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      companyName: json['company_name'] as String,
      email: json['email'] as String,
      profileImageUrl: json['profile_image_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PublisherImplToJson(_$PublisherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company_name': instance.companyName,
      'email': instance.email,
      'profile_image_url': instance.profileImageUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$PodcastListResponseImpl _$$PodcastListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PodcastListResponseImpl(
      message: json['message'] as String,
      data: PodcastResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PodcastListResponseImplToJson(
        _$PodcastListResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$PodcastResponseDataImpl _$$PodcastResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PodcastResponseDataImpl(
      message: json['message'] as String,
      data: PaginatedPodcastData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PodcastResponseDataImplToJson(
        _$PodcastResponseDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$PaginatedPodcastDataImpl _$$PaginatedPodcastDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedPodcastDataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Podcast.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num).toInt(),
      firstPageUrl: json['first_page_url'] as String?,
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginatedPodcastDataImplToJson(
        _$PaginatedPodcastDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'first_page_url': instance.firstPageUrl,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'total': instance.total,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$EmbeddablePlayerSettingsImpl _$$EmbeddablePlayerSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbeddablePlayerSettingsImpl(
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      features: Features.fromJson(json['features'] as Map<String, dynamic>),
      playlists: Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
      elementsVisibility: ElementsVisibility.fromJson(
          json['elements_visiblity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmbeddablePlayerSettingsImplToJson(
        _$EmbeddablePlayerSettingsImpl instance) =>
    <String, dynamic>{
      'player': instance.player,
      'features': instance.features,
      'playlists': instance.playlists,
      'elements_visiblity': instance.elementsVisibility,
    };

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      size: json['size'] as String,
      theme: json['theme'] as String?,
      width: json['width'] as String,
      height: json['height'] as String,
      mainColor: json['main_color'] as String,
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'theme': instance.theme,
      'width': instance.width,
      'height': instance.height,
      'main_color': instance.mainColor,
    };

_$FeaturesImpl _$$FeaturesImplFromJson(Map<String, dynamic> json) =>
    _$FeaturesImpl(
      infoIcon: json['info_icon'] as bool,
      followButton: json['follow_button'] as bool,
      giveTipButton: json['give_tip_button'] as bool,
    );

Map<String, dynamic> _$$FeaturesImplToJson(_$FeaturesImpl instance) =>
    <String, dynamic>{
      'info_icon': instance.infoIcon,
      'follow_button': instance.followButton,
      'give_tip_button': instance.giveTipButton,
    };

_$PlaylistsImpl _$$PlaylistsImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistsImpl(
      enabled: json['enabled'] as bool,
      playContinuously: json['play_continuously'] as bool,
    );

Map<String, dynamic> _$$PlaylistsImplToJson(_$PlaylistsImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'play_continuously': instance.playContinuously,
    };

_$ElementsVisibilityImpl _$$ElementsVisibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$ElementsVisibilityImpl(
      like: json['like'] as bool,
      logo: json['logo'] as bool,
      share: json['share'] as bool,
      comments: json['comments'] as bool,
      download: json['download'] as bool,
    );

Map<String, dynamic> _$$ElementsVisibilityImplToJson(
        _$ElementsVisibilityImpl instance) =>
    <String, dynamic>{
      'like': instance.like,
      'logo': instance.logo,
      'share': instance.share,
      'comments': instance.comments,
      'download': instance.download,
    };
