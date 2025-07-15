import 'package:dio/dio.dart';
import 'package:movies/data/response/movies_response.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_service.g.dart';

@RestApi(
  baseUrl:
      "https://api.mockfly.dev/mocks/dbdcf161-6133-48cf-a6f7-14856c3cd584/",
)
abstract class MoviesService {
  factory MoviesService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger errorLogger,
  }) = _MoviesService;

  @GET("/entertainment/movies")
  Future<HttpResponse<MoviesResponse>> getMovies();
}
