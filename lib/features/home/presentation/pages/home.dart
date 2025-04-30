import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:feaa/features/home/presentation/bloc/home_bloc.dart';
import 'package:feaa/features/home/presentation/widgets/sliver_horizontal_books_list.dart';
import 'package:feaa/features/home/presentation/widgets/sliver_search_bar.dart';
import 'package:feaa/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key, this.scrollController});

  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()
        ..add(
          const HomeEvent.categorySelected(
              category: HomePageCategories.contabilitate),
        ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
          child: RefreshIndicator(
            color: AppColors.primary,
            onRefresh: () async {}, // TODO
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                const SliverSearchBar(),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.status == HomeStatus.loading) {
                      return const SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 64.0),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
                    }

                    return SliverHorizontalBooksList(
                      books: state.books,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
