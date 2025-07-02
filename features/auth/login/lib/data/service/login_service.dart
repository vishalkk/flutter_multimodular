import 'package:login/data/response/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'login_service.g.dart';

@RestApi(baseUrl: "https://api.example.com")
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;


  @POST("/customers/login")
  Future<HttpResponse<LoginResponse>> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}


