import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:news_app_new/servics/hive_service.dart';
import 'package:news_app_new/utils/bloc_observer.dart';
import 'package:news_app_new/utils/methods.dart';
import 'news_app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = MyBlocObserver();
  myBox = await openHiveBox("saifBox");
  isDarkOrLight1();
  FlutterNativeSplash.remove();
  runApp(const NewsApp());
}



