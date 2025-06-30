import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioFactory {



  DioFactory();

  Future<Dio> getDio()async{
    Dio dio = Dio();

    Map<String,dynamic> headers ={
      contentType: applicationJson,
      accept: applicationJson,
      defaultLanguage: 'app_language',
      authorization: 'access_token',
      clientId: 'client_id',
    };

    dio.options = BaseOptions(
      baseUrl: 'https://api.example.com',//TODO: base url

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