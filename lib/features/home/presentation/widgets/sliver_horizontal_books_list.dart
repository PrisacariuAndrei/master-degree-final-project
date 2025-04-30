import 'package:feaa/core/domain/entities/book.dart';
import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class SliverHorizontalBooksList extends StatelessWidget {
  const SliverHorizontalBooksList({
    super.key,
    required this.books,
  });

  final List<KBook> books;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (books.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5, // Adjust as needed
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: books.length,
                itemBuilder: (context, index) => BookCard(
                  book: books[index],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
