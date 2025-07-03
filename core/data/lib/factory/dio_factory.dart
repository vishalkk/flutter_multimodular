import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioFactory {
  final String baseUrl;
  final String accessToken;
  final String language;

  DioFactory({
    required this.baseUrl,
    required this.accessToken,
    required this.language,
  });

  Future<Dio> getDio()async{
    Dio dio = Dio();

    Map<String,dynamic> headers ={
      contentType: applicationJson,
      accept: applicationJson,
      defaultLanguage: language,
      authorization: accessToken,
      clientId: 'client_id',
    };

    dio.options = BaseOptions(
      baseUrl: baseUrl,

      headers: headers,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    );

    // add logger in debug mode only not release mode
    if(!kReleaseMode){
      dio.interceptors.add(
        LogInterceptor(
          request: true,
          responseBody: true,
          requestBody: true,
          error: true,
          requestHeader: true,
          responseHeader: true,
        ),
      );
    }
    return dio;
  }
}