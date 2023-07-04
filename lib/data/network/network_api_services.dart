import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkAPiServices extends BaseApiServices{


  @override
  Future getGetAPiResponse(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException();
    }on RequestTimeout{
      throw RequestTimeout();
    }

    return responseJson;
  }

  @override
  Future getPostAPiResponse(String url, data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try{
      final response = await http.post(Uri.parse(url), body: data).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException();
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200 :
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400 :
        throw InvalidUrlException(response.body.toString());

      case 500 :
        throw BadRequestException(response.body.toString());

      case 404 :
        throw UnauthorisedException(response.body.toString());

      default  :
        throw FetchDataException( response.statusCode.toString());
    }
  }


}