
import 'package:data/di/data_module_keys.dart';
import 'package:data/factory/dio_factory.dart';
import 'package:datastore/provider/preferences/preferences_provider.dart';
import 'package:datastore/provider/session/session_provider.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
@Named(DataModuleKeys.baseUrl)
String provideBaseUrl(PreferencesProvider preferencesProvider) {
    return preferencesProvider.getBaseUrl();
  }
@Named(DataModuleKeys.accessToken)
String provideAccessToken(SessionProvider sessionProvider) {
    return sessionProvider.getAccessToken();
  }
@Named(DataModuleKeys.language)
String provideLanguage(PreferencesProvider preferencesProvider) {
    return preferencesProvider.getAppLanguage();
  }


  @lazySingleton
Dio dio(
    @Named('baseUrl') String baseUrl,
    @Named('accessToken') String accessToken,
    @Named('language') String language,
  ){
    final dioFactory= DioFactory(
      baseUrl: baseUrl,
      accessToken: accessToken,
      language: language,
    );
    return dioFactory.getDio();
  }
}