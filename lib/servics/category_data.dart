import 'package:news_app_new/generated/assets.dart';

List<LocalCategoryModel> getCategories() {
  List<LocalCategoryModel> category = [
    LocalCategoryModel(
      name: 'Business',
      image: Assets.imagesBusinessAnalyst,
    ),
    LocalCategoryModel(
      name: 'Health',
      image: Assets.imagesHealth1,
    ),
    LocalCategoryModel(
      name: 'Entertainment',
      image: Assets.imagesIntertainment,
    ),
    LocalCategoryModel(
      name: 'Science',
      image: Assets.imagesScince,
    ),
    LocalCategoryModel(
      name: 'Sports',
      image: Assets.imagesSports,
    ),
  ];
  return category;
}

class LocalCategoryModel {
  final String name;
  final String image;

  LocalCategoryModel({required this.name, required this.image});
}
