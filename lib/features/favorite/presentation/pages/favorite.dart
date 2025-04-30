import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:feaa/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:feaa/features/home/presentation/widgets/sliver_horizontal_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: Column(
          children: [
            const Text(
              'Biblioteca FEAA',
              style: AppTextStyles.title1,
            ),
            Text(
              'Explora, Communica, Disce',
              style: AppTextStyles.body1.copyWith(color: AppColors.primary),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<FavoriteBloc, FavoriteState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverHorizontalBooksList(
                  books: state.books,
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 120,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
