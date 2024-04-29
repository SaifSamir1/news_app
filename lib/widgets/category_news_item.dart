


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_new/screens/artical_screen.dart';

import '../models/artical_model/artical.dart';
import '../utils/app_styels.dart';
import '../utils/constant.dart';

class CategoryNewsItem extends StatelessWidget {
  const CategoryNewsItem({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ArticleScreen(webUrl: article.url!);
            }));
          },
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: article.urlToImage ?? noImageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                article.title!,
                style: AppStyles.styleMedium20(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
