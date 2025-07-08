import 'package:login/data/response/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'login_service.g.dart';

@RestApi(
  baseUrl:
      "https://api.mockfly.dev/mocks/dbdcf161-6133-48cf-a6f7-14856c3cd584/",
)
abstract class LoginService {
  factory LoginService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger errorLogger,
  }) = _LoginService;

  @POST("/customers/login")
  Future<HttpResponse<LoginResponse>> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
