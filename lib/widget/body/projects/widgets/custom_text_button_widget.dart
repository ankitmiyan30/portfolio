import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils_exports.dart';

import '../../../../components/custom_text_button.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: 'Projects',
      onPressed: () => AppHelper.launchURL(AppUrls.gitHub),
    );
  }
}
