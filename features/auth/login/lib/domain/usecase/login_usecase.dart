import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/model/login_model.dart';
import 'package:login/domain/repository/login_repository.dart';

class LoginUsecase implements BaseUseCase<LoginRequest,LoginModel>{
  final LoginRepository _loginRepository;
  LoginUsecase(this._loginRepository);
  @override
  Future<Either<Failure, LoginModel>> execute(LoginRequest input) {
  return _loginRepository.login(input);
  }
}