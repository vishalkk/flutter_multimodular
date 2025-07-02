
import 'package:dartz/dartz.dart';
import 'package:data/networkInfo/network_info.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/model/localised_message.dart';

Future<Either<Failure, T>> safeApiCall<T>(NetworkInfo networkInfo,
  Future<T> Function() apiCall ) async {

  if (!await networkInfo.isConnected) {
    return Left(Failure(0, LocalisedMessage(english: "No internet connection", arabic: "لا يوجد اتصال بالإنترنت")));
  }
  
  try {
    final response = await apiCall();
    return Right(response);
  } catch (error) {
    return Left(Failure(0, LocalisedMessage(english: "", arabic: ""))); 
  }
}