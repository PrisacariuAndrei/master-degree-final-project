part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  error,
}

enum HomePageCategories {
  contabilitate(label: 'Contabilitate'),
  economie(label: 'Economie'),
  finanteSiBanci(label: 'Finanțe și Bănci'),
  management(label: 'Management'),
  marketing(label: 'Marketing'),
  comert(label: 'Comerț');

  const HomePageCategories({required this.label});

  final String label;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<KBook> books,
  }) = _HomeState;
}
