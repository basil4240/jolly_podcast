import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';
import 'package:jolly_podcast/core/network/dio_client.dart';
import 'package:jolly_podcast/core/network/rest_api_clients/podcast_rest_client/podcast_rest_client.dart';
import 'package:jolly_podcast/models/podcast/podcast.dart';

import '../app/app.logger.dart';

class PodcastService {
  final _dioClient = locator<DioClient>();
  late final PodcastRestClient _podcastRestClient;

  final _logger = getLogger('PodcastService');

  PodcastService() {
    _podcastRestClient = PodcastRestClient(_dioClient.dio);
  }

  Future<Either<ApiException, PodcastListResponse>> getPodcastSubscriptions({
    int? page,
    int? perPage,
  }) async {
    try {
      final response = await _podcastRestClient.getPodcastSubscriptions(
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
      return Left(ApiException('Internal Server Error', statusCode: 500));
    }
  }
}
