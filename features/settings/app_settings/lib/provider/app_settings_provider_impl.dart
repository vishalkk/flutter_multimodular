import 'package:app_settings/provider/App_settings_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingsProvider,env:[Environment.prod])
class ProdAppSettingsProviderImpl extends AppSettingsProvider{
  @override
  String getAppLanguage() { 
    return "en"; // Default language is English
  }
  
  @override
  String themeType() {
    return "dark"; // Default theme type is light
  }
  
}

@Injectable(as: AppSettingsProvider,env:[Environment.dev])
class DevAppSettingsProviderImpl extends AppSettingsProvider{
  @override
  String getAppLanguage() { 
    return "in"; // Default language is English
  }
  
  @override
  String themeType() {
    return "light"; // Default theme type is light
  }
  
}