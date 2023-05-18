import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_github_task/RepositoryModel.dart';


final dio = Dio();

Future<RepositoryModel> getRepositoryfromapi() async {
  String  baseUrl = "https://api.github.com" ;
  final response = await dio.get('$baseUrl/search/repositories?q=Flutter');
  var data = jsonDecode(response.data.toString());
  if (response.statusCode==200){return RepositoryModel.fromJson(data);}
  else { return  RepositoryModel.fromJson(data);}
  if (kDebugMode) {
    print(response);
  }
}
