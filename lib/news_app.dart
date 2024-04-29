import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:news_app_new/screens/landing_screen.dart';
import 'package:news_app_new/servics/hive_service.dart';
import 'package:news_app_new/servics/http_service.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HttpService()),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News App',
            theme: ThemeData(
                brightness: myBox!.get('isDark') == 'true'
                    ? Brightness.dark
                    : Brightness
                    .light
            ),
            home: const LandingScreen(),
          );
        },
      ),
    );
  }
}
