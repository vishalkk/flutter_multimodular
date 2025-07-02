
import 'package:login/data/request/login_request.dart';
import 'package:login/data/response/login_response.dart';
import 'package:retrofit/dio.dart';

abstract class LoginRemoteDataSource {
  /// Sends a login request with the provided [LoginRequest].
  /// Returns an [HttpResponse] containing the [LoginResponse].
  Future<HttpResponse<LoginResponse>> login(LoginRequest request);
}
