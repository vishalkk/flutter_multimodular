import 'package:datastore/provider/preferences/preferences_provider.dart';
import 'package:datastore/provider/preferences/preferences_provider_impl.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataStoreModule {
  // Provides a pre-resolved instance of SharedPreferences.
  // This ensures that SharedPreferences is initialized asynchronously before being injected.
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  // Provides a lazy singleton instance of PreferencesProviderImpl.
  // This ensures that the PreferencesProviderImpl is created only when it is first needed.
  @lazySingleton
  PreferencesProvider providePreferencesProviderImpl(SharedPreferences prefs) =>
      PreferencesProviderImpl(prefs);
}
