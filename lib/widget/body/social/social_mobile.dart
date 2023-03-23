import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../utils/image_assets.dart';
import 'socical_exports.dart';

class SocialMobile extends StatelessWidget {
  const SocialMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.socialAbstract,
            width: context.width,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.7,
            child: GradientWidget(
              height: 350,
              width: context.width,
              radius: 0.7,
            ),
          ),
        ),
        const SocialAllCardsMobile(),
      ],
    );
  }
}
