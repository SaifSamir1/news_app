


import 'artical_model/artical.dart';

class CarouselSliderModel {
  String? status;
  int? totalResults;
  List<Article>? articles;

  CarouselSliderModel({this.status, this.totalResults, this.articles});

  factory CarouselSliderModel.fromJson(Map<String, dynamic> json) => CarouselSliderModel(
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
