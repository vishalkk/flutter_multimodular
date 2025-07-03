import 'package:datastore/provider/session/session_provider.dart';
import 'package:datastore/provider/session/session_string.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderimpl extends SessionProvider {
    final SharedPreferences _sharedPreferences;
  ProdSessionProviderimpl(this._sharedPreferences);
  
  @override
  String getAccessToken() {
    return _sharedPreferences.getString(SessionStrings.accessTokenKey) ?? "";
  }

  @override
  void setAccessToken(String accessToken) {
    _sharedPreferences.setString(SessionStrings.accessTokenKey, accessToken);
  }

  @override
  String getClientId() {
    return Uuid().v4();
  }

  @override
  String getRefreshToken() {
    return _sharedPreferences.getString(SessionStrings.accessTokenKey) ?? "";
  }

  @override
  void setRefreshToken(String refreshToken) {
    _sharedPreferences.setString(SessionStrings.refreshTokenKey, refreshToken);
  }

  @override
  String getUserId() {
    return _sharedPreferences.getString(SessionStrings.userIdKey) ?? "";
  }

  @override
  void setUserId(String userId) {
    _sharedPreferences.setString(SessionStrings.userIdKey, userId);
  }
}


@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderimpl extends SessionProvider {
  final SharedPreferences _sharedPreferences;
  DevSessionProviderimpl(this._sharedPreferences);

  @override
  String getAccessToken() {
    return _sharedPreferences.getString(SessionStrings.accessTokenKey) ?? "";
  }

  @override
  void setAccessToken(String accessToken) {
    _sharedPreferences.setString(SessionStrings.accessTokenKey, accessToken);
  }

  @override
  String getClientId() {
    return Uuid().v4();
  }

  @override
  String getRefreshToken() {
    return _sharedPreferences.getString(SessionStrings.accessTokenKey) ?? "";
  }

  @override
  void setRefreshToken(String refreshToken) {
    _sharedPreferences.setString(SessionStrings.refreshTokenKey, refreshToken);
  }

  @override
  String getUserId() {
    return _sharedPreferences.getString(SessionStrings.userIdKey) ?? "";
  }

  @override
  void setUserId(String userId) {
    _sharedPreferences.setString(SessionStrings.userIdKey, userId);
  }
}