import 'package:feaa/core/domain/entities/book.dart';
import 'package:feaa/features/home/data/data_sources/home_service.dart';
import 'package:feaa/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeService homeService;

  HomeRepositoryImpl({required this.homeService});

  @override
  Future<List<KBook>> getBooks({required String category}) async {
    final response = await homeService.getBooks(category: category);

    if (response.isSuccessful) {
      List<KBook> books = [];

      for (var i = 0; i < response.body['items'].length; i++) {
        final book = await homeService.getBookDetails(
            id: response.body['items'][i]['id']);

        if (book.isSuccessful) {
          books.add(KBook.fromJson(book.body));
        }
      }

      return books;
    } else {
      return [];
    }
  }
}
