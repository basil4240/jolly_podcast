import 'dart:convert';

import 'package:jolly_podcast/services/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';

class SharedPreferenceService
    implements LocalStorageService, InitializableDependency {
  late SharedPreferences _prefs;

  @override
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> delete(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<bool> exists(String key) async {
    return _prefs.containsKey(key);
  }

  @override
  Future<T> read<T>(String key) async {
    if (!await exists(key)) {
      throw Exception('No value found for key "$key"');
    }

    final value = _prefs.get(key);

    if (value is T) {
      return value;
    }

    try {
      if (value is String) {
        return json.decode(value) as T;
      }
      throw Exception('Could not decode value for key "$key"');
    } catch (e) {
      throw Exception('Could not cast value for key "$key" to type $T');
    }
  }

  @override
  Future<T?> readOrNull<T>(String key) async {
    if (!await exists(key)) {
      return null;
    }

    try {
      return await read<T>(key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> write<T>(String key, T value) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      try {
        final encodedValue = json.encode(value);
        await _prefs.setString(key, encodedValue);
      } catch (e) {
        throw Exception('Could not encode value of type $T for key "$key"');
      }
    }
  }

  @override
  String? get accessToken {
    try {
      return _prefs.getString('access_token');
    } catch (e) {
      return null;
    }
  }

  @override
  String? get refreshToken {
    try {
      return _prefs.getString('refresh_token');
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> clearTokens() async {
    await _prefs.remove('access_token');
    await _prefs.remove('refresh_token');
  }

  @override
  Future<void> setAccessToken(String accessToken) async {
    await _prefs.setString('access_token', accessToken);
  }

  @override
  Future<void> setRefreshToken(String refreshToken) async {
    await _prefs.setString('access_token', refreshToken);
  }

  @override
  Future<void> setTokens(
      {required String accessToken, required String refreshToken}) async {
    Future.wait([
      _prefs.setString('access_token', accessToken),
      _prefs.setString('refresh_token', refreshToken),
    ]);
  }
}
