import 'package:dio/dio.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';

class ErrorHandlingInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      final statusCode = err.response?.statusCode;
      final message =
          err.response?.data['message'] ?? 'An unknown error occurred';

      // Transform DioException into specific ApiException and throw it
      switch (statusCode) {
        case 400:
          throw BadRequestException(message, statusCode: statusCode!);
        case 401:
          throw UnauthorizedException(message, statusCode: statusCode!);
        case 403:
          throw ForbiddenException(message, statusCode: statusCode!);
        case 404:
          throw NotFoundException(message, statusCode: statusCode!);
        case 500:
          throw ServerException(message, statusCode: statusCode!);
        default:
          throw ApiException(message, statusCode: statusCode ?? 500);
      }
    }
    // If no response, it might be a network issue before reaching the server
    throw ApiException('Network connection error', statusCode: 0);
  }
}
