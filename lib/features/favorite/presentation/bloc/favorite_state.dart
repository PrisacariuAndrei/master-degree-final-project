part of 'favorite_bloc.dart';

enum FavoriteStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    @Default([]) List<KBook> books,
  }) = _FavoriteState;
}
