part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.addBookToFavorite({required KBook book}) = AddBookToFavorite;

  const factory FavoriteEvent.removeBookFromFavorite({required String bookId}) = RemoveBookFromFavorite;
}
