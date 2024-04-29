


import 'package:flutter/material.dart';

import '../utils/app_styels.dart';

class BreakingNewsHeader extends StatelessWidget {
  const BreakingNewsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Breaking News!',
            style: AppStyles.styleSemiBold22(context),
          ),
        ],
      ),
    );
  }
}
