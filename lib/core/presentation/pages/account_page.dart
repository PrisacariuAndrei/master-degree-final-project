import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/features/favorite/presentation/widgets/sp_list_item.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage:
                        AssetImage('assets/images/licenta_local.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 8,
                    ),
                    child: Text("Andrei Prisacariu", style: AppTextStyles.body1,),
                  ),
                ],
              ),
            ),
            SpListItem(
              title: 'Setari Cont',
              imagePath: 'assets/images/licenta_local.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Cod de Access',
              imagePath: 'assets/images/licenta_dis.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Carti Favorite',
              imagePath: 'assets/images/licenta_dis.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Support',
              imagePath: 'assets/images/licenta_dis.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Delogare',
              imagePath: 'assets/images/licenta_dis.png',
            ),
          ],
        ),
      ),
    );
  }
}
