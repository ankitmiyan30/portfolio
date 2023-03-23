import 'package:flutter/material.dart';

import '../../../../utils/utils_exports.dart';

class TitleDescriptionShort extends StatelessWidget {
  const TitleDescriptionShort({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          '• $title',
          style: AppTextStyles.experienceTitle,
        ),
        const SizedBox(height: 8),
        SelectableText(
          '    — $description',
          style: AppTextStyles.experienceDescription,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
