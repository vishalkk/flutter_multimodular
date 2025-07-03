class ResponseCode {
  // HTTP success status codes
  static int success = 200; // Request succeeded
  static int noContent = 204; // Request succeeded but no content to return
  static int badRequest = 400; // Client sent an invalid request
  static int unauthorised = 401; // Authentication is required or failed
  static int forbidden = 403; // Client does not have access rights
  static int internalServerError = 500; // Server encountered an error
  static int notFound = 404; // Requested resource not found

  // Local status codes for custom error handling
  static int connectTimeOut = -1; // Connection timed out
  static int cancelled = -2; // Request was cancelled
  static int receiveTimeOut = -3; // Receiving data timed out
  static int sendTimeOut = -4; // Sending data timed out
  static int cacheError = -5; // Error related to caching
  static int noInternetConnection = -6; // No internet connection available
  static int defaultError = -7; // Default error for unspecified cases
}
