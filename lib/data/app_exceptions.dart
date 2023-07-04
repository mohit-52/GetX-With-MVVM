class AppExceptions implements Exception{
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return "$_prefix $_message";
  }
}

class InternetException extends AppExceptions{
  InternetException([String? message]) : super(message , "No Internet");
}

class RequestTimeout extends AppExceptions{
  RequestTimeout([String? message]) : super(message , "Request Timeout");
}

class ServerException extends AppExceptions{
  ServerException([String? message]) : super(message , "Internal Server Error!");
}

