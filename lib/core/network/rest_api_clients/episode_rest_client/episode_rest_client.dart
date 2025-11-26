import 'package:dio/dio.dart';
import 'package:jolly_podcast/models/episode/episode.dart';
import 'package:retrofit/retrofit.dart';

import '../../annotations.dart' as annotations;
import 'package:jolly_podcast/core/constants/api_endpoints.dart'; // Changed to package import

part 'episode_rest_client.g.dart';

/// A Retrofit client for interacting with episode-related API endpoints.
///
/// This client provides methods to fetch details of a single episode.
/// Methods annotated with `@Extra({annotations.requiresAuthTokenExtraKey: true})` will have
/// an authentication token automatically appended by the AuthInterceptor.
@RestApi(baseUrl: APIEndpoints.EPISODES_BASE_URL) // Use constant
abstract class EpisodeRestClient {
  factory EpisodeRestClient(Dio dio, {String baseUrl}) = _EpisodeRestClient;

  /// Fetches the details of a single episode by its ID.
  ///
  /// Requires an authentication token.
  @GET('/{episodeId}')
  @Extra({annotations.requiresAuthTokenExtraKey: true})
  Future<EpisodeDetailsResponse> getEpisodeDetails(
    @Path('episodeId') int episodeId,
  );
}
