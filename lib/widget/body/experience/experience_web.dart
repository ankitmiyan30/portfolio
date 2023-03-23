import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../core/mixins/mixins.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/dividers_exports.dart';
import '../section/section_exports.dart';
import 'experience_exports.dart';

class ExperienceWeb extends StatelessWidget with ResponsivePositionMixin {
  const ExperienceWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              right: 0,
              child: Align(
                alignment: Alignment.centerRight,
                child: ImageAssetWidget(
                  AppAssets.abstractRight,
                  height: context.height,
                ),
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                radius: 0.5,
                width: context.width,
                height: context.height,
                alignment: Alignment(
                  gradientExperienceAndProjectsSectionWidthAlignment(
                    constraints.maxWidth,
                  ),
                  0.18,
                ),
              ),
            ),
            Positioned.fill(
              child: ImageAssetWidget(
                AppAssets.presentationTextureLarge,
                alignment: Alignment.topCenter,
                height: context.height,
                width: context.width,
              ),
            ),
            Column(
              children: [
                WebBody(
                  children: [
                    const SectionTitle(
                      isWeb: true,
                      paddingTop: 50,
                      paddingBottom: 20,
                      title: 'Experience',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 24, left: 40),
                                child: const ImageAssetWidget(
                                  AppAssets.champ,
                                  width: 300,
                                ),
                              ),
                              const SizedBox(height: 87),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SectionExperienceTexts(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SectionDivider(),
              ],
            ),
          ],
        );
      },
    );
  }
}
