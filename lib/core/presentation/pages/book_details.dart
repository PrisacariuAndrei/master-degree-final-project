import 'package:feaa/core/domain/entities/book.dart';
import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/widgets/hero_widget.dart';
import 'package:feaa/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:feaa/features/favorite/presentation/pages/favorite.dart';
import 'package:feaa/features/favorite/presentation/pages/favorite.dart';
import 'package:feaa/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({
    super.key,
    required this.book,
    required this.animation,
    required this.offsetAnimation,
  });

  final KBook book;
  final Animation animation;
  final Animation offsetAnimation;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails>
    with SingleTickerProviderStateMixin {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                widget.book.volumeInfo?.imageLinks?['large'] ?? ''),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColors.black.withAlpha(50),
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 48,
                      height: 48,
                      margin: const EdgeInsets.only(top: 16, left: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: widget.offsetAnimation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: widget.offsetAnimation.value,
                      child: child,
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 400,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 16.0, top: 16),
                              child: GestureDetector(
                                onTap: () {
                                  context.read<FavoriteBloc>().add(
                                        FavoriteEvent.addBookToFavorite(
                                          book: widget.book,
                                        ),
                                      );
                                },
                                child: BlocBuilder<FavoriteBloc, FavoriteState>(
                                  builder: (context, state) {
                                    return state.books.contains(widget.book)
                                        ? const Icon(Icons.favorite_outlined,
                                            size: 24, color: Colors.red,)
                                        : const Icon(
                                            Icons.favorite_outline_rounded,
                                            size: 24,
                                            color: AppColors.textColor,
                                          );
                                  },
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.0, top: 16),
                              child: Icon(
                                Icons.share,
                                size: 24,
                                color: AppColors.textColor,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.0, top: 16),
                              child: Icon(
                                Icons.menu_book_outlined,
                                size: 24,
                                color: AppColors
                                    .textColor, // todo add disable option
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 124.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // TODO, add null ceck operators
                                const Icon(
                                  Icons.calendar_month_rounded,
                                  color: Colors.brown,
                                  size: 16,
                                ),
                                Text(
                                  " ${widget.book.volumeInfo?.publishedDate}",
                                  style: AppTextStyles.body2,
                                ),
                                const SizedBox(width: 16),
                                const Icon(
                                  Icons.file_copy_outlined,
                                  color: Colors.lightGreen,
                                  size: 16,
                                ),
                                Text(
                                  " ${widget.book.volumeInfo?.pageCount} pagini",
                                  style: AppTextStyles.body2,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              widget.book.volumeInfo?.title ?? '',
                              style:
                                  AppTextStyles.title1.copyWith(height: 1.25),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          if (widget.book.volumeInfo?.authors != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "de: ${widget.book.volumeInfo?.authors?.join(", ")}",
                                style: AppTextStyles.body2,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Wrap(
                              children: [
                                for (String category
                                    in widget.book.volumeInfo?.categories ?? [])
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryDisabled
                                            .withAlpha(35),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      margin: const EdgeInsets.all(4),
                                      child: Text(
                                        category,
                                        style: AppTextStyles.body2.copyWith(
                                          color: AppColors.primary,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 32.0),
                            child:
                                Text("Descriere", style: AppTextStyles.title2),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Html(
                                  data:
                                      widget.book.volumeInfo?.description ?? '')
                              //Text(widget.book.volumeInfo?.description ?? ''),
                              ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, 75),
                  child: HeroWidget(
                    tag: widget.book.id!,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 160,
                      height: 400,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                        widget.book.volumeInfo?.imageLinks?['large'] ?? '',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
