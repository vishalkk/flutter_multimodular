import 'package:flutter_multimodular_practice/di/injection.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/usecase/login_usecase.dart';


/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  // var session = DevSessionProviderimpl();
}

void doLogin() async {
  final loginUsecase= getIt<LoginUsecase>();
  final loginRequest = LoginRequest(
    email: 'vishalkajales@gmail.com',
    password: '123456', 
  );
 
 final result = await loginUsecase.execute(loginRequest);
  result.fold(
    (failure) => print('Login failed: ${failure.message}'),
    (loginModel) => print('Login successful: ${loginModel.name}'),
  );
}