import 'package:feaa/core/domain/entities/book.dart';

abstract class HomeRepository {
  Future<List<KBook>> getBooks({required String category});
}
