import 'package:feaa/core/domain/entities/book.dart';
import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class SliverHorizontalBooksList extends StatelessWidget {
  const SliverHorizontalBooksList({
    super.key,
    required this.title,
    required this.books,
  });

  final String title;
  final List<KBook> books;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (books.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(
                title,
                style: AppTextStyles.title2.copyWith(color: AppColors.black),
              ),
            ),
          if (books.isNotEmpty)
            SizedBox(
              height: 290,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
