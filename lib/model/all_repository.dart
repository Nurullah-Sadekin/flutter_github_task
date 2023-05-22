import 'items.dart';
import 'dart:convert';

AllRepository allRepositoryFromJson(String str) =>
    AllRepository.fromJson(json.decode(str));
String allRepositoryToJson(AllRepository data) => json.encode(data.toJson());

class AllRepository {
  AllRepository({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  AllRepository.fromJson(dynamic json) {
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  int? totalCount;
  bool? incompleteResults;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = totalCount;
    map['incomplete_results'] = incompleteResults;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
