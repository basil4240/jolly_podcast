import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/app/app.router.dart';
import 'package:jolly_podcast/core/exceptions/api_exception.dart';
import 'package:jolly_podcast/models/user/user.dart';
import 'package:jolly_podcast/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final _dialogService = locator<DialogService>();

  final formKey = GlobalKey<FormState>();

  String? _phoneNumber;
  String? _password;

  void setPhoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;
  void setPassword(String password) => _password = password;

  bool _isPasswordVisible = false;
  bool get isPasswordVisible => _isPasswordVisible;
  set isPasswordVisible(bool value) {
    _isPasswordVisible = value;
    notifyListeners();
  }

  Future<void> onLogin() async {
    if (formKey.currentState!.validate()) {
      setBusy(true);
      final result = await _authService.login(
        LoginRequest(phoneNumber: _phoneNumber!, password: _password!),
      );
      setBusy(false);

      result.fold(
        (failure) {
          _dialogService.showDialog(
            title: 'Login Failed',
            description: failure.message,
          );
        },
        (success) {
          _navigationService.replaceWithPodcastListView();
        },
      );
    }
  }

  String? validatePhoneNumber(String? value) {
    // Renamed
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }
}
