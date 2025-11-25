// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/views/episode_list/episode_list_view.dart'
    as _i5;
import 'package:jolly_podcast/ui/views/login/login_view.dart' as _i3;
import 'package:jolly_podcast/ui/views/player/player_view.dart' as _i6;
import 'package:jolly_podcast/ui/views/podcast_list/podcast_list_view.dart'
    as _i4;
import 'package:jolly_podcast/ui/views/startup/startup_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i8;

class Routes {
  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const podcastListView = '/podcast-list-view';

  static const episodeListView = '/episode-list-view';

  static const playerView = '/player-view';

  static const all = <String>{
    startupView,
    loginView,
    podcastListView,
    episodeListView,
    playerView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i3.LoginView,
    ),
    _i1.RouteDef(
      Routes.podcastListView,
      page: _i4.PodcastListView,
    ),
    _i1.RouteDef(
      Routes.episodeListView,
      page: _i5.EpisodeListView,
    ),
    _i1.RouteDef(
      Routes.playerView,
      page: _i6.PlayerView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.LoginView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.LoginView(),
        settings: data,
      );
    },
    _i4.PodcastListView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PodcastListView(),
        settings: data,
      );
    },
    _i5.EpisodeListView: (data) {
      final args = data.getArgs<EpisodeListViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.EpisodeListView(
            key: args.key,
            podcastId: args.podcastId,
            podcastTitle: args.podcastTitle,
            podcastAuthor: args.podcastAuthor),
        settings: data,
      );
    },
    _i6.PlayerView: (data) {
      final args = data.getArgs<PlayerViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.PlayerView(key: args.key, episodeId: args.episodeId),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class EpisodeListViewArguments {
  const EpisodeListViewArguments({
    this.key,
    required this.podcastId,
    required this.podcastTitle,
    required this.podcastAuthor,
  });

  final _i7.Key? key;

  final int podcastId;

  final String podcastTitle;

  final String podcastAuthor;

  @override
  String toString() {
    return '{"key": "$key", "podcastId": "$podcastId", "podcastTitle": "$podcastTitle", "podcastAuthor": "$podcastAuthor"}';
  }

  @override
  bool operator ==(covariant EpisodeListViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.podcastId == podcastId &&
        other.podcastTitle == podcastTitle &&
        other.podcastAuthor == podcastAuthor;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        podcastId.hashCode ^
        podcastTitle.hashCode ^
        podcastAuthor.hashCode;
  }
}

class PlayerViewArguments {
  const PlayerViewArguments({
    this.key,
    required this.episodeId,
  });

  final _i7.Key? key;

  final int episodeId;

  @override
  String toString() {
    return '{"key": "$key", "episodeId": "$episodeId"}';
  }

  @override
  bool operator ==(covariant PlayerViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.episodeId == episodeId;
  }

  @override
  int get hashCode {
    return key.hashCode ^ episodeId.hashCode;
  }
}

extension NavigatorStateExtension on _i8.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPodcastListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.podcastListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEpisodeListView({
    _i7.Key? key,
    required int podcastId,
    required String podcastTitle,
    required String podcastAuthor,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.episodeListView,
        arguments: EpisodeListViewArguments(
            key: key,
            podcastId: podcastId,
            podcastTitle: podcastTitle,
            podcastAuthor: podcastAuthor),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPlayerView({
    _i7.Key? key,
    required int episodeId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.playerView,
        arguments: PlayerViewArguments(key: key, episodeId: episodeId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPodcastListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.podcastListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEpisodeListView({
    _i7.Key? key,
    required int podcastId,
    required String podcastTitle,
    required String podcastAuthor,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.episodeListView,
        arguments: EpisodeListViewArguments(
            key: key,
            podcastId: podcastId,
            podcastTitle: podcastTitle,
            podcastAuthor: podcastAuthor),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPlayerView({
    _i7.Key? key,
    required int episodeId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.playerView,
        arguments: PlayerViewArguments(key: key, episodeId: episodeId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
