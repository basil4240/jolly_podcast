import 'package:dio/dio.dart';
import 'package:jolly_podcast/app/app.logger.dart';
import 'package:jolly_podcast/core/constants/api_endpoints.dart';
import 'package:jolly_podcast/core/network/dio_interceptors/auth_interceptor.dart';
import 'package:jolly_podcast/core/network/dio_interceptors/error_handling_interceptor.dart'; // New import
import 'package:jolly_podcast/core/network/retrofit_custom_logger.dart'; // Import custom logger
import 'package:logger/logger.dart';

/// A wrapper around Dio to provide a pre-configured HTTP client.
///
/// This class sets up the base options for Dio, including content type,
/// base URL, and adds necessary interceptors for authentication. It also
/// provides access to a custom Retrofit error logger.
class DioClient {
  final Dio _dio;
  final Logger _logger =
      getLogger('DioClient'); // Keep for general Dio logging if needed
  final RetrofitCustomLogger _retrofitCustomLogger =
      RetrofitCustomLogger(); // Instantiate custom Retrofit logger

  DioClient()
      : _dio = Dio(BaseOptions(headers: {
          'Content-Type': 'application/json',
        }, baseUrl: APIEndpoints.baseUrl)) {
    // Use APIEndpoints.baseUrl
    // Order matters: Error handling should happen before auth, typically.
    _dio.interceptors
        .add(ErrorHandlingInterceptor()); // Add error handling interceptor
    // Adds an authentication interceptor to automatically attach auth tokens
    // to requests requiring them.
    _dio.interceptors.add(AuthInterceptor(_dio));
  }

  /// Returns the configured Dio instance.
  Dio get dio => _dio;

  /// Returns the custom Retrofit error logger.
  RetrofitCustomLogger get retrofitCustomLogger => _retrofitCustomLogger;
}
