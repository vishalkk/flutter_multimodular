// Enum representing various data source states or error types
enum DataSource {
  success, // Operation was successful
  noContent, // No content available
  badRequest, // Bad request error
  forbidden, // Access is forbidden
  unauthorised, // User is not authorised
  internalServerError, // Internal server error occurred
  connectTimeOut, // Connection timed out
  cancelled, // Request was cancelled
  receiveTimeOut, // Timeout while receiving data
  sendTimeOut, // Timeout while sending data
  cacheError, // Error related to caching
  noInternetConnection, // No internet connection available
  defaultError // Default or unknown error
}
