import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';
import 'package:jolly_podcast/core/network/dio_client.dart';
import 'package:jolly_podcast/core/network/rest_api_clients/episode_rest_client/episode_rest_client.dart';
import 'package:jolly_podcast/core/network/rest_api_clients/podcast_rest_client/podcast_rest_client.dart';
import 'package:jolly_podcast/models/episode/episode.dart';

/// A service that handles all episode-related business logic and API calls.
///
/// This service acts as a bridge between the UI/ViewModel layer and the
/// network layer for fetching episode data. It uses `PodcastRestClient`
/// for fetching episode lists and `EpisodeRestClient` for fetching single
/// episode details. It also handles API error responses using the `Either`
/// type from `dartz` for functional error handling.
class EpisodeService {
  final _dioClient = locator<DioClient>();
  late final PodcastRestClient _podcastRestClient;
  late final EpisodeRestClient _episodeRestClient;

  EpisodeService() {
    _podcastRestClient = PodcastRestClient(_dioClient.dio);
    _episodeRestClient = EpisodeRestClient(_dioClient.dio);
  }

  /// Fetches a paginated list of episodes for a given podcast.
  ///
  /// Requires `podcastId` and can optionally take `page` and `perPage`
  /// parameters for pagination.
  /// Returns an `Either` type, which will be `Left` with an `ApiException`
  /// on failure, or `Right` with an `EpisodeListResponse` on success.
  Future<Either<ApiException, EpisodeListResponse>> getEpisodes({
    required int podcastId,
    int? page,
    int? perPage,
  }) async {
    try {
      final response = await _podcastRestClient.getEpisodes(
        podcastId,
        page: page,
        perPage: perPage,
      );
      return Right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left(UnauthorizedException(
          e.response?.data['message'] ?? 'Unauthenticated',
          statusCode: 401,
        ));
      }
      if (e.response?.statusCode == 403) {
        return Left(ForbiddenException(
          e.response?.data['message'] ?? 'Forbidden',
          statusCode: 403,
        ));
      }
      if (e.response?.statusCode == 500) {
        return Left(ServerException(
          e.response?.data['message'] ?? 'Server error',
          statusCode: 500,
        ));
      }

      return Left(ApiException(
        e.response?.data['message'] ?? 'An unknown error occurred',
        statusCode: e.response?.statusCode ?? 500,
      ));
    } catch (e) {
      print((e as dynamic).stackTrace);
      return Left(ApiException('Internal Server Error', statusCode: 500));
    }
  }

  /// Fetches the detailed information for a single episode.
  ///
  /// Requires `episodeId`.
  /// Returns an `Either` type, which will be `Left` with an `ApiException`
  /// on failure, or `Right` with an `EpisodeDetailsResponse` on success.
  Future<Either<ApiException, EpisodeDetailsResponse>> getEpisodeDetails({
    required int episodeId,
  }) async {
    try {
      final response = await _episodeRestClient.getEpisodeDetails(episodeId);
      return Right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left(UnauthorizedException(
          e.response?.data['message'] ?? 'Unauthenticated',
          statusCode: 401,
        ));
      }
      if (e.response?.statusCode == 403) {
        return Left(ForbiddenException(
          e.response?.data['message'] ?? 'Forbidden',
          statusCode: 403,
        ));
      }
      if (e.response?.statusCode == 500) {
        return Left(ServerException(
          e.response?.data['message'] ?? 'Server error',
          statusCode: 500,
        ));
      }

      return Left(ApiException(
        e.response?.data['message'] ?? 'An unknown error occurred',
        statusCode: e.response?.statusCode ?? 500,
      ));
    } catch (e) {
      return Left(ApiException('Internal Server Error', statusCode: 500));
    }
  }
}
