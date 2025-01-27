import 'package:feaa/core/data/local/data_sources/home_page_data.dart';
import 'package:feaa/core/data/local/models/home_page_model.dart';
import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:feaa/features/home/presentation/widgets/home_card.dart';
import 'package:feaa/router/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: Text('Bine ați venit pe Portalul FEAA!'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 120,
          ),
          itemCount: HomePageData.dataList.length,
          itemBuilder: (context, index) {
            final HomePageAnnouncementModel announcement =
                HomePageData.dataList[index];
            return HomeCard(
              margin: const EdgeInsets.only(bottom: 16),
              title: announcement.cardTitle,
              description: announcement.cardDescription,
              imageUrl: announcement.cardImgPath,
              onTap: () => context.push(
                RoutePath.announcement.path,
                extra: announcement,
              ),
            );
          }),
    );
  }
}
