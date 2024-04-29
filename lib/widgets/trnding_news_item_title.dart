


import 'package:flutter/material.dart';

import '../utils/app_styels.dart';

class TrendingNewsItemTitle extends StatelessWidget {
  const TrendingNewsItemTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.sizeOf(context).width - 20) / 1.7,
      child: Text(
        title,
        maxLines: 2,
        style: AppStyles.styleSemiBold18(context).copyWith(
            color: Colors.black, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
