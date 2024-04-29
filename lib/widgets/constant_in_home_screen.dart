import 'package:flutter/material.dart';
import 'package:news_app_new/servics/category_data.dart';
import 'package:news_app_new/widgets/trending_news_header.dart';
import '../models/carousel_model.dart';
import 'breaking_news_header.dart';
import 'build_indicator.dart';
import 'category_list_view.dart';
import 'custom_carousel_slider.dart';

class ConstantComponantInHomeScreen extends StatelessWidget {
  const ConstantComponantInHomeScreen({
    super.key,
    required this.categories,
    required this.sliders,
  });

  final List<LocalCategoryModel> categories;
  final CarouselSliderModel sliders;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesListView(categories: categories),
          const SizedBox(
            height: 30,
          ),
          const BreakingNewsHeader(),
          const SizedBox(
            height: 20,
          ),
          CustomCarouselSlider(sliders: sliders),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: BuildIndicator(
              sliders: sliders,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TrendingNewsHeader(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
