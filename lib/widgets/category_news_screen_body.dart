import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../mangers/home_cubit/home_cubit.dart';
import 'category_news_list_view.dart';

class CategoryNewsScreenBody extends StatefulWidget {
  const CategoryNewsScreenBody({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<CategoryNewsScreenBody> createState() => _CategoryNewsScreenBodyState();
}

class _CategoryNewsScreenBodyState extends State<CategoryNewsScreenBody> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context)
        .fetchCategory(category: widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is FetchCategoryLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is FetchCategoryError) {
          return const Center(
            child: Text(
                'SomeThing Wrong Try Again , And check the internet connection'),
          );
        }
        if (state is FetchCategorySuccess) {
          return const CategoryListView();
        }
        return const SizedBox();
      },
    );
  }
}
