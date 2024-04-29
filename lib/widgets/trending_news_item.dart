import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/widgets/trending_news_item_descrebtion.dart';
import 'package:news_app_new/widgets/trending_news_item_image.dart';
import 'package:news_app_new/widgets/trnding_news_item_title.dart';
import '../mangers/home_cubit/home_cubit.dart';
import '../screens/artical_screen.dart';

class TrendingNewItem extends StatelessWidget {
  final int index;
  const TrendingNewItem(
      {super.key,
      required this.imageUrl,
      required this.description,
      required this.title, required this.index});
  final String imageUrl;
  final String description;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context1) => ArticleScreen(
              webUrl: BlocProvider.of<HomeCubit>(context)
                  .article!
                  .articles![index]
                  .url!,
            ),
          ),
        );
      },
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
          child: Row(
            children: [
              TrendingNewsItemImage(imageUrl: imageUrl),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TrendingNewsItemTitle(title: title),
                  const SizedBox(
                    height: 7,
                  ),
                  TrendingNewsItemDescribtion(description: description),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

