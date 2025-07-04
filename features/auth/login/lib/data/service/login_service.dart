import 'package:login/data/response/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'login_service.g.dart';


@RestApi(baseUrl: "https://4wd91.wiremockapi.cloud/")
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl, ParseErrorLogger errorLogger}) = _LoginService;


  @POST("/customers/login")
  Future<HttpResponse<LoginResponse>> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}


