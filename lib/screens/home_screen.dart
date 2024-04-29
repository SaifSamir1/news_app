
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:news_app_new/servics/hive_service.dart';
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
        actions: [
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return PopupMenuButton<bool>(
                icon: const Icon(Icons.more_vert),
                onSelected: (value) {
                  BlocProvider.of<HomeCubit>(context).changeAppTheme();
                },
                offset: const Offset(-20, 38),
                itemBuilder: (context) =>
                [
                  PopupMenuItem(
                    value: false,
                    child: Text(myBox!.get('theme')),
                  ),
                  // ... other menu items
                ],
              );
            },
          ),
        ],
        elevation: 0,
      ),
      body: const HomeScreenBody(),
    );
  }
}


