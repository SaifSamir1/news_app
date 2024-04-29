import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:news_app_new/servics/http_service.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/article_screen_body.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.webUrl});

  final String webUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const AppBarTitle(),
        elevation: 0,
      ),
      body: SafeArea(
        child: ArticleScreenBody(
          webUrl: webUrl,
        ),
      ),
    );
  }
}

