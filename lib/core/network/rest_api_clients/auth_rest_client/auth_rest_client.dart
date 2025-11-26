import 'package:dio/dio.dart';
import 'package:jolly_podcast/models/user/user.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_rest_client.g.dart';

@RestApi(baseUrl: 'auth')
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio, {String baseUrl}) = _AuthRestClient;

  @POST('/login')
  Future<LoginResponse> login(@Body() Map<String, dynamic> loginRequest);
}
