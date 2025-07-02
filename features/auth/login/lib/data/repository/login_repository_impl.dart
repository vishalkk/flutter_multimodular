import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/data/response/login_response.dart';
import 'package:login/domain/login_repository.dart';
import 'package:login/domain/model/login_model.dart';
import 'package:login/mapper/login_mapper.dart';

class LoginRepositoryImpl implements LoginRepository {

  final LoginRemoteDataSource _loginRemoteDataSource;
  LoginRepositoryImpl(this._loginRemoteDataSource);
  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest request) async{
    final result = await _loginRemoteDataSource.login(request);
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(response.toDomain()),// Convert LoginResponse to LoginModel
    );
  }
 
}