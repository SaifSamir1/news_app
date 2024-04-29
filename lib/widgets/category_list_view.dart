


import 'package:flutter/material.dart';
import '../servics/category_data.dart';
import 'category_tile.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.categories,
  });

  final List<LocalCategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryTile(
              categoryName: categories[index].name,
              image: categories[index].image);
        },
      ),
    );
  }
}
