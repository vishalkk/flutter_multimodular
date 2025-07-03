abstract class SessionProvider {
  String getClientId();
  String getAccessToken();
  String getRefreshToken();
  String getUserId();
    void setUserId(String userId);

  void setAccessToken(String accessToken);

  void setRefreshToken(String refreshToken);
}