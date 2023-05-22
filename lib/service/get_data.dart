import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_github_task/model/all_repository.dart';

AllRepository? itemsFromApi;
final dio = Dio();
Future<AllRepository> getData() async {
  final response = await dio.get(
      'https://api.github.com/search/repositories?q=flutter&sort=stars&order=desc');
  if (response.statusCode == 200) {
    if (kDebugMode) {
      print("================  Stats Code 200");
    }
    return itemsFromApi = AllRepository.fromJson(response.data);
  } else {
    if (kDebugMode) {
      print('No Data Found');
    }
    return itemsFromApi = AllRepository.fromJson(response.data);
  }
}
