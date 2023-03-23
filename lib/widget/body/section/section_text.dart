import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';

class SectionText extends StatelessWidget {
  const SectionText({
    super.key,
    required this.title,
    required this.paddingTop,
    required this.paddingBottom,
    this.isCentered = false,
  });

  final String title;
  final double paddingTop;
  final double paddingBottom;
  final bool isCentered;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: SelectableText(
        title,
        textAlign: isCentered ? TextAlign.center : TextAlign.start,
        style: AppTextStyles.presentationText,
      ),
    );
  }
}
