import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/dividers_exports.dart';
import '../section/section_exports.dart';
import 'experience_exports.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const Positioned(
              top: -25,
              right: 0,
              child: ImageAssetWidget(
                AppAssets.abstractRight,
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                opacity: 0.7,
                height: context.height,
                width: context.width,
                alignment: Alignment.bottomCenter,
              ),
            ),
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Experience',
                ),
                const SectionExperienceTexts(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: const ImageAssetWidget(
                    AppAssets.champ,
                    height: 185,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}
