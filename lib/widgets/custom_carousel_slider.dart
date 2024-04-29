

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/models/carousel_model.dart';

import '../mangers/home_cubit/home_cubit.dart';
import 'build_slider_image.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.sliders,
  });

  final CarouselSliderModel sliders;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliders.articles!.length,
      options: CarouselOptions(
          height: 250,
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, value) {
            BlocProvider.of<HomeCubit>(context).changeCarouselSliderIndex(index);
          }),
      itemBuilder: (context, index, realIndex) {
        final res = sliders.articles![index];
        return BuildSliderItem(
            article: res,);
      },
    );
  }
}
