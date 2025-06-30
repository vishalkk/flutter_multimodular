import 'package:flutter_multimodular_practice/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_multimodular_practice/di/injection.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit() 
void configureDependencies(String? environment) => getIt.init(environment: environment);