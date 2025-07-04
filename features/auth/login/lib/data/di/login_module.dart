import 'package:data/networkInfo/network_info_impl.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/remote/login_remote_data_source_impl.dart';
import 'package:login/data/repository/login_repository_impl.dart';
import 'package:login/data/service/login_service.dart';
import 'package:login/domain/repository/login_repository.dart';
import 'package:login/domain/usecase/login_usecase.dart';

@module
abstract class LoginModule {
  // Use the Dio instance provided by DataModule
  @lazySingleton
  LoginService provideLoginService(Dio dio) {
    return LoginService(dio);
  }

  // Provides an instance of NetworkInfoImpl
  // This is used to check the network connectivity status
  @lazySingleton
  NetworkInfoImpl provideNetworkInfo() => NetworkInfoImpl();

  // Provides an instance of LoginRemoteDataSource
  // LoginRemoteDataSource handles remote data operations for login
  @lazySingleton
  LoginRemoteDataSource provideLoginRemoteDataSource(
      LoginService loginService, NetworkInfoImpl networkInfo) {
    return LoginRemoteDataSourceImpl(networkInfo, loginService);
  }

  @lazySingleton
  LoginRepository provideLoginRepository(
      LoginRemoteDataSource loginRemoteDataSource) {
    return LoginRepositoryImpl(loginRemoteDataSource);
  }

  @lazySingleton
  LoginUsecase provideLoginUsecase(LoginRepository loginRepository) {
    return LoginUsecase(loginRepository);
  }
}
