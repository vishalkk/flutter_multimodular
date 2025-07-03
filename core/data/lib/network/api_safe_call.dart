
import 'package:dartz/dartz.dart';
import 'package:data/errorHandler/data_source.dart';
import 'package:data/errorHandler/data_source_extension.dart';
import 'package:data/errorHandler/dio_error_handler.dart';
import 'package:data/networkInfo/network_info.dart';
import 'package:domain/model/failure.dart';

Future<Either<Failure, T>> safeApiCall<T>(NetworkInfo networkInfo,
  Future<T> Function() apiCall ) async {

  if (await networkInfo.isConnected) {
     try {
    final response = await apiCall();
    return Right(response);
  } catch (error) {
    return Left(ErrorHandler.handle(error).failure); 
  }
  }else{
return Left(DataSource.noInternetConnection.getFailure());
  }
  
 
}