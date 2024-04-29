

import 'artical_model/artical.dart';

class CategoryModel {
  String? status;
  int? totalResults;
  List<Article>? articles;

  CategoryModel({this.status, this.totalResults, this.articles});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    status: json['status'] as String?,
    totalResults: json['totalResults'] as int?,
    articles: (json['articles'] as List<dynamic>?)
        ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'totalResults': totalResults,
    'articles': articles?.map((e) => e.toJson()).toList(),
  };
}
