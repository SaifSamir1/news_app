

import 'package:flutter/material.dart';

import '../servics/web_view_service.dart';

class ArticleScreenBody extends StatelessWidget {
  const ArticleScreenBody({super.key, required this.webUrl});
  final String webUrl;
  @override
  Widget build(BuildContext context) {
    return CustomWebView(
      webUrl: webUrl,
    );
  }
}
