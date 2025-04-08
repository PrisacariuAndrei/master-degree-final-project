import 'package:feaa/core/domain/entities/book.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/pages/book_details.dart';
import 'package:feaa/core/presentation/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final KBook book;

  void onTap(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(seconds: 1),
        reverseTransitionDuration: const Duration(seconds: 1),
        pageBuilder: (context, animation, secondaryAnimation) {
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: const Interval(0, 0.5),
          );

          final offsetAnimation = Tween<Offset>(
            begin: const Offset(0, 500),
            end: const Offset(0, 250),
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ));

          return FadeTransition(
            opacity: curvedAnimation,
            child: BookDetails(
              book: book,
              animation: animation,
              offsetAnimation: offsetAnimation,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 8, right: 8),
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                onTap(context);
              },
              child: Container(
                height: 180,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 2, spreadRadius: 1),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                clipBehavior: Clip.hardEdge,
                child: HeroWidget(
                  tag: book.id!,
                  child: Image.network(
                    book.volumeInfo?.imageLinks?['large'] ?? '',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              book.volumeInfo?.title ?? '',
              style: AppTextStyles.body1,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (book.volumeInfo?.authors != null)
              Text(
                (book.volumeInfo?.authors?.join(", ")).toString(),
                style: AppTextStyles.body3,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }
}
