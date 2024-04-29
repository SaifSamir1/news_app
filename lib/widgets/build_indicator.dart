import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../mangers/home_cubit/home_cubit.dart';
import '../models/carousel_model.dart';
import '../utils/constant.dart';

class BuildIndicator extends StatelessWidget {
  const BuildIndicator({super.key, required this.sliders});
  final CarouselSliderModel sliders;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return AnimatedSmoothIndicator(
          activeIndex: BlocProvider.of<HomeCubit>(context).activeIndex,
          count: sliders.articles!.length,
          effect:  const SlideEffect(
            dotWidth: 15,
            dotHeight: 15,
            activeDotColor: defaultColor,
          ),
        );
      },
    );
  }
}
