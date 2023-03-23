import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils_exports.dart';

import '../section/section_exports.dart';
import 'socical_exports.dart';

class TitleTextList extends StatelessWidget {
  const TitleTextList({
    super.key,
    this.isWeb = false,
  });

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          isWeb: isWeb,
          paddingTop: 50,
          paddingBottom: 20,
          title: AppString.socialLinks,
        ),
        const SectionText(
          paddingTop: 0,
          paddingBottom: 24,
          title: AppString.followMeOnMySocialNetworks,
        ),
        const Center(
          child: SocialList(),
        ),
      ],
    );
  }
}
