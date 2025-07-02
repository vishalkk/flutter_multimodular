import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/data/response/login_response.dart';
import 'package:login/data/service/login_service.dart';
import 'package:retrofit/dio.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {

  final LoginService _loginService;
    LoginRemoteDataSourceImpl(this._loginService);
  @override
  Future<HttpResponse<LoginResponse>> login(LoginRequest request) async{
    
    return await _loginService.login(
      request.email,
      request.password,
    );
  }

}