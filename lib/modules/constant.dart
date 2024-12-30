import 'package:dio/dio.dart';
String url = 'https://data.usajobs.gov/api';
BaseOptions options = BaseOptions(
  baseUrl: url, 
  headers : {"Accept": "application/json",},
  followRedirects: false,
  validateStatus: (code ){
    if(code! >= 200) {
      return true;
    }
    return false;
  }
);
Dio dio  = Dio(options);