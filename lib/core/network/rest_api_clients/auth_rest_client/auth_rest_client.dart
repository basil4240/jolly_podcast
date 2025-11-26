import 'package:dio/dio.dart';
import 'package:jolly_podcast/models/user/user.dart';
import 'package:retrofit/retrofit.dart';

import 'package:jolly_podcast/core/constants/api_endpoints.dart'; // Changed to package import

part 'auth_rest_client.g.dart';

@RestApi(baseUrl: APIEndpoints.AUTH_BASE_URL) // Use constant
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio, {String baseUrl}) = _AuthRestClient;

  @POST('/login')
  Future<LoginResponse> login(@Body() Map<String, dynamic> loginRequest);
}
