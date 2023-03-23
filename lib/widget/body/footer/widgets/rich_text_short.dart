import 'package:flutter/material.dart';
import '../../../../utils/utils_exports.dart';

class RichTextShort extends StatelessWidget {
  const RichTextShort({
    super.key,
    required this.textAlign,
  });

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      textAlign: textAlign,
      TextSpan(
        children: [
          TextSpan(
            text: '${DateTimeUtils.getYear(DateTime.now())} - ',
            style: AppTextStyles.phraseWhite,
          ),
          TextSpan(
            text: '${AppString.userName}.',
            style: AppTextStyles.phrasePrimary,
          ),
        ],
      ),
    );
  }
}
