



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_new/models/artical_model/artical.dart';
import 'package:news_app_new/screens/artical_screen.dart';

import '../utils/app_styels.dart';

class BuildSliderItem extends StatelessWidget {
  const BuildSliderItem(
      {super.key, required this.article,
        });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return ArticleScreen(webUrl: article.url!);
        })
        );
      },
      child: Material(


        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: article.urlToImage!,
                    height: 250,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
              Container(
                height: 250,
                padding: const EdgeInsets.only(left: 10),
                margin: const EdgeInsets.only(top: 130),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  article.title!,
                  maxLines: 2,
                  style: AppStyles.styleSemiBold18(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

