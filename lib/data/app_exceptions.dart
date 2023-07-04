class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return "$_prefix $_message";
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, "No Internet");
}

class RequestTimeout extends AppExceptions {
  RequestTimeout([String? message]) : super(message, "Request Timeout");
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, "Internal Server Error!");
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Invalid Request');
}

class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message])
      : super(message, 'Unauthorised Request');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'Invalid Url');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, 'Error occurred while communicating with server with status code: ');
}
