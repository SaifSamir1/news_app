

import 'package:flutter/material.dart';

import '../utils/app_styels.dart';

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
        Text('App',style: AppStyles.styleSemiBold30(context).copyWith(
            color: Colors.blue
        ),),
      ],
    );
  }
}
