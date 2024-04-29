


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TrendingNewsItemImage extends StatelessWidget {
  const TrendingNewsItemImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: 120,
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
