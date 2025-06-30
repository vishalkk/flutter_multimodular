abstract class SessionProvider {
  String getClientId();
  String getAccessToken();
  String getRefreshToken();
  String getUserId();
}