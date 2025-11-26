/// Defines custom annotations used within the network layer.
library annotations;

/// Annotation to mark API methods that require an authentication token.
/// The AuthInterceptor will look for this annotation to automatically
/// append the 'Authorization' header.
class RequiresToken {
  const RequiresToken();
}

/// A constant key used to mark API requests that require an
/// authentication token in their headers. The AuthInterceptor checks
/// for this extra value in RequestOptions.
const String requiresAuthTokenExtraKey = 'REQUIRES_AUTH';
