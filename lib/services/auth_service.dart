import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';
import 'package:jolly_podcast/core/network/dio_client.dart';
import 'package:jolly_podcast/core/network/rest_api_clients/auth_rest_client/auth_rest_client.dart';
import 'package:jolly_podcast/models/user/user.dart';
import 'package:jolly_podcast/services/local_storage_service.dart';

/// A service that handles all authentication-related business logic and API calls.
///
/// This service acts as a bridge between the UI/ViewModel layer and the
/// network layer for authentication. It uses `AuthRestClient` for API calls
/// and handles API error responses using the `Either` type from `dartz` for
/// functional error handling.
class AuthService {
  final _dioClient = locator<DioClient>();
  final _localStorageService = locator<LocalStorageService>();
  late final AuthRestClient _authRestClient;

  AuthService() {
    _authRestClient = AuthRestClient(_dioClient.dio);
  }

  /// Attempts to log in a user with the provided credentials.
  ///
  /// Returns an `Either` type, which will be `Left` with an `ApiException`
  /// on failure (e.g., invalid credentials, network error), or `Right` with
  /// a `LoginResponse` on successful login.
  Future<Either<ApiException, LoginResponse>> login(
      LoginRequest loginRequest) async {
    try {
      final response = await _authRestClient.login(loginRequest.toJson());
      if (response.data.token != null) {
        await _localStorageService.setAccessToken(response.data.token!);
      }
      return Right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Left(BadRequestException(
          e.response?.data['message'] ?? 'Invalid phone number',
          statusCode: 400,
        ));
      }
      if (e.response?.statusCode == 404) {
        return Left(NotFoundException(
          e.response?.data['message'] ?? 'Phone number not found',
          statusCode: 404,
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
      return Left(ApiException(e.toString(), statusCode: 500));
    }
  }
}
