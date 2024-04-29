import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:news_app_new/models/category_model.dart';
import 'package:news_app_new/servics/category_data.dart';
import 'package:news_app_new/widgets/trending_news_list_view.dart';
import 'constant_in_home_screen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<LocalCategoryModel> categories = [];

  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).fetchArticle();
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is FetchArticleSuccess) {
          BlocProvider.of<HomeCubit>(context).fetchSliders();
        }
      },
      builder: (context, state) {
        if (state is FetchArticleLoading ||
            state is FetchArticleSuccess ||
            state is FetchSlidersLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is FetchArticleError || state is FetchSlidersError) {
          return const Center(
            child: Text('SomeThing Wrong'),
          );
        }
        return CustomScrollView(
          slivers: [
            ConstantComponantInHomeScreen(
                categories: categories,
                sliders: BlocProvider.of<HomeCubit>(context).sliders!),
            const TrendingNewsListView(),
          ],
        );
      },
    );
  }
}
