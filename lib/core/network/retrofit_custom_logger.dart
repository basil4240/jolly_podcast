import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// Defines an interface for a custom Retrofit error logger.
///
/// This interface matches the signature expected by `retrofit_generator`'s
/// internal error logging mechanism.
abstract class RetrofitErrorLogger {
  void logError(Object error, StackTrace stackTrace, RequestOptions options,
      [String? message]);
}

/// A custom implementation of [RetrofitErrorLogger] that uses the project's
/// [Logger] for error logging.
///
/// This class can be provided to Retrofit client factories to ensure
/// consistent error reporting throughout the network layer.
class RetrofitCustomLogger implements RetrofitErrorLogger {
  final Logger _logger = Logger(); // Use your project's logger

  @override
  void logError(Object error, StackTrace stackTrace, RequestOptions options,
      [String? message]) {
    _logger.e(
      message ?? 'Retrofit Error: ${options.path}',
      error, // Pass error as a positional argument
      stackTrace,
    );
  }
}
