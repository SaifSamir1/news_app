



import 'package:flutter/material.dart';

import '../utils/app_styels.dart';

class TrendingNewsHeader extends StatelessWidget {
  const TrendingNewsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Trending News!',
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
