class ApiException<T> implements Exception {
  final String message;
  final int statusCode;
  final String? error; // e.g., BAD_REQUEST, FORBIDDEN
  final List<String>? messages; // Optional list of detailed messages
  final T? data; // Optional generic data

  ApiException(
    this.message, {
    required this.statusCode,
    this.error,
    this.messages,
    this.data,
  });

  @override
  String toString() {
    String output = 'ApiException: $message (Status Code: $statusCode)';
    if (error != null) {
      output += ', Error: $error';
    }
    if (messages != null && messages!.isNotEmpty) {
      output += ', Details: ${messages!.join(', ')}';
    }
    if (data != null) {
      output += ', Data: $data';
    }
    return output;
  }
}

class ServerException<T> extends ApiException<T> {
  ServerException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class ClientException<T> extends ApiException<T> {
  ClientException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class NotFoundException<T> extends ApiException<T> {
  NotFoundException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class UnauthorizedException<T> extends ApiException<T> {
  UnauthorizedException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class ForbiddenException<T> extends ApiException<T> {
  ForbiddenException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class BadRequestException<T> extends ApiException<T> {
  BadRequestException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class ConflictException<T> extends ApiException<T> {
  ConflictException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class TimeoutException<T> extends ApiException<T> {
  TimeoutException(
    super.message, {
    required super.statusCode,
    super.error,
    super.messages,
    super.data,
  });
}

class NoInternetConnectionException<T> extends ApiException<T> {
  NoInternetConnectionException(
    super.message, {
    required super.statusCode, // Should be 0 or a specific code for no internet
    super.error,
    super.messages,
    super.data,
  });
}
