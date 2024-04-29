

import 'package:flutter/material.dart';

import '../utils/app_styels.dart';
import '../utils/constant.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('News'),
        Text('App',style: AppStyles.styleBold35(context).copyWith(
            color: defaultColor
        ),),
      ],
    );
  }
}
