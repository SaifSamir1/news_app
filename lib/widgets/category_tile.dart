import 'package:flutter/material.dart';
import 'package:news_app_new/utils/app_styels.dart';

import '../screens/category_news.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {super.key, required this.categoryName, required this.image});

  final String categoryName, image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CategoryNewsScreen(
            categoryName: categoryName,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                width: 120,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 120,
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black38, borderRadius: BorderRadius.circular(8)),
              child: Text(categoryName,
                  style: AppStyles.styleSemiBold14(context)
                      .copyWith(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
