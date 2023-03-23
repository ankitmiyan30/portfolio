import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils_exports.dart';

import 'socical_exports.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    const launch = AppHelper.launchURL;

    return Column(
      children: [
        SocialItem(
          title: AppString.github,
          image: AppAssets.gitHub,
          onTap: () => launch(AppUrls.gitHub),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppString.linkedIn,
          image: AppAssets.linkedIn,
          onTap: () => launch(AppUrls.linkedIn),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppString.stackOverFlow,
          image: AppAssets.stackOverFlow,
          onTap: () => launch(AppUrls.stackOverFlow),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppString.faceBook,
          image: AppAssets.facebook,
          onTap: () => launch(AppUrls.facebook),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppString.instagram,
          image: AppAssets.instagram,
          onTap: () => launch(AppUrls.instagram),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
