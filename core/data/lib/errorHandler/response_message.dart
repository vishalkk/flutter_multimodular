import 'package:data/errorHandler/app_strings.dart';

/// A class that provides static constants for response messages.
/// These messages are mapped to corresponding strings in the `AppStrings` class.
class ResponseMessage {
  // Success response
  static const String success = AppStrings.success;

  // No content response
  static const String noContent = AppStrings.noContent;

  // Bad request response
  static const String badRequest = AppStrings.badRequest;

  // Unauthorized response
  static const String unauthorised = AppStrings.unauthorised;

  // Internal server error response
  static const String internalServerError = AppStrings.internalServerError;

  // Forbidden response
  static const String forbidden = AppStrings.forbidden;

  // Local errors from the app

  // Connection timeout error
  static const String connectTimeOut = AppStrings.connectTimeOut;

  // Request cancelled error
  static const String cancelled = AppStrings.cancelled;

  // Receive timeout error
  static const String receiveTimeOut = AppStrings.receiveTimeOut;

  // Send timeout error
  static const String sendTimeOut = AppStrings.sendTimeOut;

  // Cache error
  static const String cacheError = AppStrings.cacheError;

  // No internet connection error
  static const String noInternetConnection = AppStrings.noInternetConnection;

  // Default error message
  static const String defaultError = AppStrings.defaultError;
}
