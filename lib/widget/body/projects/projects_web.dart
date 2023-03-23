import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/widget/body/projects/widgets/custom_text_button_widget.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../core/mixins/mixins.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/section_divider.dart';
import '../section/section_exports.dart';

class ProjectsWeb extends StatelessWidget with ResponsivePositionMixin {
  const ProjectsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              bottom: 4,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ImageAssetWidget(
                  AppAssets.abstractLarge,
                  alignment: Alignment.topCenter,
                  height: 305.7,
                  width: context.width,
                ),
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                opacity: 0.8,
                radius: 0.75,
                width: context.width,
                height: context.height,
                alignment: Alignment(
                  -gradientExperienceAndProjectsSectionWidthAlignment(
                    constraints.maxWidth,
                  ),
                  0.18,
                ),
              ),
            ),
            Column(
              children: [
                WebBody(
                  children: [
                    const SectionTitle(
                      isWeb: true,
                      paddingTop: 50,
                      paddingBottom: 8,
                      title: 'Projects',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 400,
                                child: SectionText(
                                  paddingTop: 42,
                                  paddingBottom: 36,
                                  title: 'GitHub Projects',
                                ),
                              ),
                              CustomTextButtonWidget(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const ImageAssetWidget(
                                  AppAssets.mockup,
                                  width: 460,
                                ),
                              ),
                              const SizedBox(height: 60),
                            ],
                          ),
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
