import 'package:flutter/material.dart';

import '../../../../utils/utils_exports.dart';
import '../../body_exports.dart';
import '../footer_exports.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      color: AppColors.black,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: WebBody(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RichTextShort(
                      textAlign: TextAlign.start,
                    ),
                    SelectableText(
                      AppString.flutterProjectOpenSource,
                      style: AppTextStyles.phraseWhite,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  TextWithLink(
                    text: AppString.seeInGitHub,
                    link: AppUrls.gitHubProject,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
