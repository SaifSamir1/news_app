import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:news_app_new/servics/http_service.dart';

import '../widgets/app_bar_title.dart';
import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(),
        elevation: 0,
      ),
      body: BlocProvider(
          create: (context)=> HomeCubit(HttpService()) ,
          child: const HomeScreenBody()),
    );
  }
}


