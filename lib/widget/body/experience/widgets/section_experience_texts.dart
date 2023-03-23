import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_strings.dart';

import '../experience_exports.dart';

class SectionExperienceTexts extends StatelessWidget {
  const SectionExperienceTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDescriptionShort(
          title: AppString.techspianExp[0],
          description: AppString.techspianExp[1],
        ),
        TitleDescriptionShort(
          title: AppString.rubicoExp[0],
          description: AppString.rubicoExp[1],
        ),
        TitleDescriptionShort(
          title: AppString.gslabExp[0],
          description: AppString.gslabExp[1],
        ),
        TitleDescriptionShort(
          title: AppString.freeLance[0],
          description: AppString.freeLance[1],
        ),
      ],
    );
  }
}
