import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/models/carousel_model.dart';
import 'package:news_app_new/models/category_model.dart';
import 'package:news_app_new/servics/hive_service.dart';
import 'package:news_app_new/servics/http_service.dart';
import '../../models/artical_model/artical_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.httpService) : super(HomeInitial());
  HttpService httpService;
  int activeIndex = 0;
  ArticleModel? article;
  CarouselSliderModel? sliders;
  CategoryModel? categories;
  bool webViewLoading = true;

  void changeAppTheme(){
    if( myBox!.get('isDark') == 'false'){
      myBox!.put('isDark', 'true');
      myBox!.put('theme', 'Light');
    }else{
      myBox!.put('isDark', 'false');
      myBox!.put('theme', 'Dark');
    }
    emit(ChangeAppTheme());
  }

  void isLoading(bool loading) {
    webViewLoading = loading;
    emit(IsLoading());
  }

  void changeCarouselSliderIndex(int index) {
    activeIndex = index;
    emit(ChangeCarouselSliderIndex());
  }

  DateTime dateTime = DateTime.now();
  Future<void> fetchArticle() async {
    emit(FetchArticleLoading());
    var result = await httpService.getRequest(
        url1:
            'https://newsapi.org/v2/everything?q=tesla&from=${dateTime.year}-${dateTime.month - 1}-${dateTime.day}&sortBy=publishedAt&apiKey');
    result.fold((error) {
      log(error.toString());
      emit(FetchArticleError(errorMessage: error.toString()));
    }, (response) {
      final jsonResponse = jsonDecode(response!.body);
      article = ArticleModel.fromJson(jsonResponse);
      emit(FetchArticleSuccess());
    });
  }

  Future<void> fetchSliders() async {
    emit(FetchSlidersLoading());
    var result = await httpService.getRequest(
        url1: 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey');
    result.fold((error) {
      log(error.toString());
      emit(FetchSlidersError(errorMessage: error.toString()));
    }, (response) {
      final jsonResponse = jsonDecode(response!.body);
      sliders = CarouselSliderModel.fromJson(jsonResponse);
      emit(FetchSlidersSuccess());
    });
  }

  Future<void> fetchCategory({required String category}) async {
    emit(FetchCategoryLoading());
    var result = await httpService.getRequest(
        url1:
            'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey');
    result.fold((error) {
      log(error.toString());
      emit(FetchCategoryError(errorMessage: error.toString()));
    }, (response) {
      final jsonResponse = jsonDecode(response!.body);
      categories = CategoryModel.fromJson(jsonResponse);
      emit(FetchCategorySuccess());
    });
  }
}
