import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../utils/image_assets.dart';
import 'socical_exports.dart';

class SocialWeb extends StatelessWidget {
  const SocialWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 4,
          child: ImageAssetWidget(
            AppAssets.socialAbstractLarge,
            alignment: Alignment.topCenter,
            width: context.width,
            height: 495,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.75,
            child: GradientWidget(
              height: 400,
              width: context.width,
              radius: 0.75,
            ),
          ),
        ),
        const SocialAllCardsWeb(),
      ],
    );
  }
}
