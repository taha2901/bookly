// علفكره الفايل ده هتاخدو بعدين تحطو ف كل ابلكيشن ف اتطمن

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request with ApiServer cansel');
      case DioExceptionType.connectionError:
        return ServerFailure('Request with ApiServer connectionError');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('UnExpected Error, try later');

      default:
        return ServerFailure('ooops , there was an error , please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']
          ['message']); //ده بيبقا على حسب الريسبونس اللي راجعلك
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Found,Please Try again!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , please try again later!');
    } else {
      return ServerFailure('ooops , there was an error , please try again');
    }
  }
}
