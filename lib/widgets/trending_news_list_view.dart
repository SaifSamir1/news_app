import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/utils/constant.dart';
import 'package:news_app_new/widgets/trending_news_item.dart';

import '../mangers/home_cubit/home_cubit.dart';

class TrendingNewsListView extends StatelessWidget {
  const TrendingNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: BlocProvider.of<HomeCubit>(context).article!.articles!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
          child: TrendingNewItem(
            index: index,
            title: BlocProvider.of<HomeCubit>(context)
                .article!
                .articles![index]
                .title!,
            imageUrl: BlocProvider.of<HomeCubit>(context)
                .article!
                .articles![index]
                .urlToImage ?? noImageUrl,
            description: BlocProvider.of<HomeCubit>(context)
                .article!
                .articles![index]
                .description ?? 'Unknown',
          ),
        );
      },
    );
  }
}
