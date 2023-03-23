import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/widget/body/projects/widgets/custom_text_button_widget.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/section_divider.dart';
import '../section/section_exports.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 4,
              child: Stack(
                children: [
                  ImageAssetWidget(
                    AppAssets.abstractFit,
                    width: context.width,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                radius: 0.6,
                width: context.width,
                height: context.height,
                alignment: const Alignment(0.0, 0.5),
              ),
            ),
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Projects',
                ),
                const Center(
                  child: SectionText(
                    paddingTop: 0,
                    paddingBottom: 24,
                    title: 'GitHub Projects',
                  ),
                ),
                const CustomTextButtonWidget(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24, bottom: 16),
                  child: const ImageAssetWidget(
                    AppAssets.mockup,
                    width: 324,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}
