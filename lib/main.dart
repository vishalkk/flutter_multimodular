// ignore_for_file: unused_import

import 'package:app_settings/provider/App_settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multimodular_practice/di/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:login/login.dart';
import 'package:login/presentation/screen/login_screen.dart';
import 'package:navigator/navigation_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize the dependency injection system
  // Configure dependencies for the development environment
  // This will set up the necessary services and repositories based on the environment
  // For example, it might set up a mock repository for testing or a real repository for production
  // The Environment.dev parameter indicates that we are configuring for the development environment
  // This allows us to have different configurations for different environments (e.g., dev, prod, test)
  // The configureDependencies function is defined in the injection.dart file
  // It uses the injectable package to generate the necessary code for dependency injection
  // The generated code will be in the injection.config.dart file
  // Make sure to run the build_runner command to generate this file
  // You can run the command: flutter pub run build_runner build --delete-conflicting-outputs
  // This will generate the injection.config.dart file with the necessary code for dependency injection
  // After running the command, you can import the generated file in your main.dart file
  // and use the getIt instance to access the registered dependencies
  await configureDependencies(Environment.dev);
  runApp(const NavigationModule());
}
