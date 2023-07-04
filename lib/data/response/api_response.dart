import 'package:getx_mvvm/data/response/status.dart';

class ApiResponse<T>{

  Status? status;
  T? data;
  String? message;

  ApiResponse({required this.status, required this.data, required this.message});

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    // TODO: implement toString
    return "Status: $status\nData: $data\nMessage: $message";
  }
}