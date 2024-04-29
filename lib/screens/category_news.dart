import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:news_app_new/servics/http_service.dart';
import 'package:news_app_new/utils/app_styels.dart';

import '../widgets/category_news_screen_body.dart';

class CategoryNewsScreen extends StatelessWidget {
  const CategoryNewsScreen({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          categoryName,
          style:
              AppStyles.styleSemiBold30(context).copyWith(color: Colors.blue),
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => HomeCubit(HttpService()),
          child: CategoryNewsScreenBody(
            categoryName: categoryName,
          ),
        ),
      ),
    );
  }
}

