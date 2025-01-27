import 'package:feaa/core/data/local/models/home_page_model.dart';
import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_constants.dart';
import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:flutter/material.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({
    super.key,
    required this.announcement,
  });

  final HomePageAnnouncementModel announcement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: Text(announcement.cardTitle),
        showBackButton: true,
      ),
      body: CustomScrollView(
        slivers: [
          if (announcement.pageImgPath != null &&
              announcement.pageImgPath!.isNotEmpty)
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              toolbarHeight: 40,
              leading: const SizedBox.shrink(),
              foregroundColor: AppColors.transparent,
              backgroundColor: AppColors.transparent,
              surfaceTintColor: AppColors.transparent,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [
                  StretchMode.zoomBackground,
                ],
                expandedTitleScale: 2,
                background: GestureDetector(
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: AppColors.transparent,
                      contentPadding: EdgeInsets.zero,
                      content: Image.asset(
                        announcement.pageImgPath!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    announcement.pageImgPath!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(kLoremIpsum),
            ),
          ),
        ],
      ),
    );
  }
}
