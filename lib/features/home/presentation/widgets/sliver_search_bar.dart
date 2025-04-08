import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/features/home/presentation/widgets/category_chip.dart';
import 'package:feaa/core/presentation/widgets/text_field.dart';
import 'package:feaa/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SliverSearchBar extends StatefulWidget {
  const SliverSearchBar({super.key});

  @override
  State<SliverSearchBar> createState() => _SliverSearchBarState();
}

class _SliverSearchBarState extends State<SliverSearchBar> {
  HomePageCategories selectedCategory = HomePageCategories.toate;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      foregroundColor: AppColors.background,
      backgroundColor: AppColors.background,
      surfaceTintColor: AppColors.background,
      expandedHeight: 140,
      collapsedHeight: 140,
      toolbarHeight: 140,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 24),
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: KTextField(
                controller: null,
                hasError: false,
                fillColor: AppColors.white,
                hint: 'Caută o carte, autor sau editură',
                onTap: () {},
                prefixIcon: SvgPicture.asset(
                  'assets/images/nav_bar/ic_bar_search.svg',
                  width: 24,
                  height: 24,
                  colorFilter: const ColorFilter.mode(
                    AppColors.textColor,
                    BlendMode.srcIn,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 38,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: HomePageCategories.values.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = HomePageCategories.values[index];
                    });
                    context.read<HomeBloc>().add(
                           HomeEvent.categorySelected(
                            category: HomePageCategories.values[index],
                          )
                    );
                  },
                  child: CategoryChip(
                    label: HomePageCategories.values[index].label,
                    isSelected:
                        HomePageCategories.values[index] == selectedCategory,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
