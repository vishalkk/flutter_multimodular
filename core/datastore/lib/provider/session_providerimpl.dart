import 'package:datastore/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderimpl extends SessionProvider {
  @override
  String getAccessToken() {
  return "prod_access_token"; // Default access token for production
  }

  @override
  String getClientId() {
   return "1111111"; // Default client ID for production
  }

  @override
  String getRefreshToken() {
   return "prod_refresh_token"; // Default refresh token for production
  }

  @override
  String getUserId() {
    return "123456789"; // Default user ID for production
  }
}


@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderimpl extends SessionProvider {
  @override
  String getAccessToken() {
  return "dev_access_token"; // Default access token for production
  }

  @override
  String getClientId() {
   return "22222222"; // Default client ID for production
  }

  @override
  String getRefreshToken() {
   return "dev_refresh_token"; // Default refresh token for production
  }

  @override
  String getUserId() {
    return "123456789"; // Default user ID for production
  }
}