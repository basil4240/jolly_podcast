import 'package:dio/dio.dart';

import '../../../app/app.locator.dart';
import '../../../services/local_storage_service.dart';
import '../annotations.dart' as annotations; // Import annotations with alias

class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final _storageService = locator<LocalStorageService>();

  AuthInterceptor(this._dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = _storageService.accessToken;

    // Attach token if endpoint needs it
    final needsAuth = options.extra[annotations.requiresTokenSymbol] == true;
    if (needsAuth && token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // if (err.response?.statusCode == 401) {
    //   final refreshToken = _storageService.refreshToken;
    //
    //   if (refreshToken != null) {
    //     try {
    //       // Refresh token
    //       final response = await _dio
    //           .post(refreshTokenUrl, data: {'refreshToken': refreshToken});
    //
    //       final newToken = response.data['accessToken'];
    //       final newRefresh = response.data['refreshToken'];
    //
    //       // set tokens
    //       await _storageService.setTokens(accessToken: newToken, refreshToken: newRefresh);
    //
    //       // Retry original request with new token
    //       final retryRequest = err.requestOptions;
    //       retryRequest.headers['Authorization'] = 'Bearer $newToken';
    //
    //       final cloneResponse = await _dio.fetch(retryRequest);
    //       return handler.resolve(cloneResponse);
    //     } catch (e) {
    //       // Refresh failed: logout
    //       await _storageService.clearTokens();
    //       return handler.next(err);
    //     }
    //   }
    // }

    return handler.next(err);
  }
}