import 'package:dio/dio.dart';
import 'package:jolly_podcast/models/episode/episode.dart';
import 'package:jolly_podcast/models/podcast/podcast.dart';
import 'package:retrofit/retrofit.dart';

import '../../annotations.dart' as annotations; // Import with alias

part 'podcast_rest_client.g.dart'; // Moved to top

/// A Retrofit client for interacting with podcast-related API endpoints.
///
/// This client provides methods to fetch podcast subscriptions and episodes.
/// Methods annotated with `@Extra({annotations.requiresTokenSymbol: true})` will have
/// an authentication token automatically appended by the AuthInterceptor.
@RestApi(baseUrl: 'podcasts')
abstract class PodcastRestClient {
  factory PodcastRestClient(Dio dio, {String baseUrl}) = _PodcastRestClient;

  /// Fetches a paginated list of podcast subscriptions.
  ///
  /// Requires an authentication token.
  @GET('/subscriptions')
  @Extra({annotations.requiresTokenSymbol: true})
  Future<PodcastListResponse> getPodcastSubscriptions({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  /// Fetches a paginated list of episodes for a specific podcast.
  ///
  /// Requires an authentication token.
  @GET('/{podcastId}/episodes')
  @Extra({annotations.requiresTokenSymbol: true})
  Future<EpisodeListResponse> getEpisodes(
    @Path('podcastId') int podcastId, {
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}
