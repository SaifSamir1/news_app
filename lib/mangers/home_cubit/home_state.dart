part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangeCarouselSliderIndex extends HomeState {}

final class FetchArticleLoading extends HomeState {}
final class FetchArticleSuccess extends HomeState {}
final class FetchArticleError extends HomeState {
  final String errorMessage;

  FetchArticleError({required this.errorMessage});
}

final class IsLoading extends HomeState {}


final class FetchSlidersLoading extends HomeState {}
final class FetchSlidersSuccess extends HomeState {}
final class FetchSlidersError extends HomeState {
  final String errorMessage;

  FetchSlidersError({required this.errorMessage});
}


final class FetchCategoryLoading extends HomeState {}
final class FetchCategorySuccess extends HomeState {}
final class FetchCategoryError extends HomeState {
  final String errorMessage;

  FetchCategoryError({required this.errorMessage});
}
