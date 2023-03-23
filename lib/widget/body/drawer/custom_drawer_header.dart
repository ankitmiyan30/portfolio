import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(4),
          // decoration: const BoxDecoration(
          //   color: AppColors.primary,
          //   shape: BoxShape.circle,
          //   gradient: AppGradients.stories,
          // ),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppAssets.profile,
                ),
              ),
            ),
          ),
        ),
        SelectableText(
          AppString.name,
          textAlign: TextAlign.center,
          style: AppTextStyles.socialTitle,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
