part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.categorySelected({
    required HomePageCategories category,
  }) = CategorySelected;
}
