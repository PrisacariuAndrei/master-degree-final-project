import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.title,
    this.description,
    this.imageUrl,
    this.margin = EdgeInsets.zero,
    this.onTap,
  });

  final String title;
  final String? description;
  final String? imageUrl;
  final EdgeInsets margin;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Card(
              elevation: 6,
              shadowColor: AppColors.black1,
              color: AppColors.white,
              margin: const EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          width: 40,
                          height: 20,
                        ),
                        Text(
                          title,
                          style: AppTextStyles.body1.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description ?? '',
                          style: AppTextStyles.body2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 6,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.primary,
                ),
                width: 48,
                height: 48,
                clipBehavior: Clip.hardEdge,
                child: imageUrl == null || imageUrl!.isEmpty
                    ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                          'assets/images/logo.svg',
                          colorFilter: const ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                    )
                    : Image.asset(
                        imageUrl!,
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
