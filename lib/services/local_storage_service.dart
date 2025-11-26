abstract interface class LocalStorageService {
  Future<T> read<T>(String key);

  Future<T?> readOrNull<T>(String key);

  Future<void> write<T>(String key, T value);

  Future<void> delete(String key);

  Future<bool> exists(String key);

  //   helper members
  Future<void> setTokens(
      {required String accessToken, required String refreshToken});

  Future<void> setAccessToken(String accessToken);

  Future<void> setRefreshToken(String refreshToken);

  Future<void> clearTokens();

  String? get accessToken;

  String? get refreshToken;
}
