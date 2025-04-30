import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:feaa/core/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_event.dart';

part 'favorite_state.dart';

part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteState()) {
    on<AddBookToFavorite>(_onAddBookToFavorite);
    on<RemoveBookFromFavorite>(_onRemoveBookFromFavorite);
  }

  Future<void> _onAddBookToFavorite(
    AddBookToFavorite event,
    Emitter<FavoriteState> emit,
      ) async {
    emit(state.copyWith(status: FavoriteStatus.loading));

    // Make a copy of the books list
    final updatedBooks = List<KBook>.from(state.books);

    if (updatedBooks.contains(event.book)) {
      updatedBooks.remove(event.book);
    } else {
      updatedBooks.add(event.book);
    }

    emit(state.copyWith(books: updatedBooks, status: FavoriteStatus.success));
  }

  Future<void> _onRemoveBookFromFavorite(
    RemoveBookFromFavorite event,
    Emitter<FavoriteState> emit,
  ) async {
    state.books.removeWhere((element) => element.id == event.bookId);
  }
}
