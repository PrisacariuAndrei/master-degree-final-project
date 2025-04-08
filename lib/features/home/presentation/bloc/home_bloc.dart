import 'package:feaa/core/domain/entities/book.dart';
import 'package:feaa/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(const HomeState()) {
    on<CategorySelected>(_onCategorySelected);
  }

  Future<void> _onCategorySelected(
    CategorySelected event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));

    try {
      final response =
          await homeRepository.getBooks(category: event.category.name);

      emit(state.copyWith(status: HomeStatus.success, books: response));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
