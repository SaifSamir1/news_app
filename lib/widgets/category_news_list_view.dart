

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../mangers/home_cubit/home_cubit.dart';
import 'category_news_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: BlocProvider.of<HomeCubit>(context)
          .categories!
          .articles!
          .length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10.0),
          child: CategoryNewsItem(
            article: BlocProvider.of<HomeCubit>(context)
                .categories!
                .articles![index],
          ),
        );
      },
    );
  }
}
