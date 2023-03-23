import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../components/single_child_scroll_view_without_scroll.dart';
import '../../../core/mixins/mixins.dart';
import '../../../utils/utils_exports.dart';
import '../dividers/dividers_exports.dart';
import '../section/section_exports.dart';
import '../web_body.dart';

class PresentationWeb extends StatelessWidget with ResponsivePositionMixin {
  const PresentationWeb(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: GradientWidget(
                radius: 0.7,
                height: context.height,
                width: context.width,
                alignment: Alignment(
                  gradientPresentationWidthAlignment(constraints.maxWidth),
                  0,
                ),
              ),
            ),
            Positioned.fill(
              child: ImageAssetWidget(
                AppAssets.presentationTextureLarge,
                height: context.height,
                width: context.width,
              ),
            ),
            SingleChildScrollViewWithoutScroll(
              child: Column(
                children: [
                  WebBody(
                    children: [
                      const SectionTitle(
                        isWeb: true,
                        paddingTop: 50,
                        paddingBottom: 12,
                        title: AppString.hiIamText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SectionSubtitle(
                                  paddingTop: 0,
                                  paddingBottom: 32,
                                  title: AppString.iamDeveloper,
                                ),
                                SizedBox(
                                  width: 400,
                                  child: GradientDivider(),
                                ),
                                SizedBox(
                                  child: Center(
                                    child: SectionText(
                                      paddingTop: 32,
                                      paddingBottom: 32,
                                      title: AppString.developerQuote,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Container(
                              width: 300,
                              height: 300,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 24),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                    AppAssets.profile,
                                  ),
                                ),
                              ),
                              // child: const ImageAssetWidget(
                              //   AppAssets.profile,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                  PresentationDivider(itemScrollController),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
