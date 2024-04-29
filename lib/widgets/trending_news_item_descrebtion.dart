

import 'package:flutter/material.dart';

import '../utils/app_styels.dart';

class TrendingNewsItemDescribtion extends StatelessWidget {
  const TrendingNewsItemDescribtion({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.sizeOf(context).width - 20) / 1.7,
      child: Text(
        description,
        maxLines: 3,
        style: AppStyles.styleSemiBold16(context).copyWith(
            color: Colors.black54, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
