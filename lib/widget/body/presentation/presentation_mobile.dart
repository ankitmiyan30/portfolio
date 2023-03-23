import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../components/single_child_scroll_view_without_scroll.dart';
import '../../../core/responsive/breakpoints.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/dividers_exports.dart';
import '../section/section_exports.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GradientWidget(
            radius: 0.9,
            height: context.height,
            width: context.width,
            alignment: Alignment.center,
          ),
        ),
        Positioned.fill(
          child: GradientWidget(
            opacity: 0.75,
            radius: 1,
            height: context.height,
            width: context.width,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.presentationTextureBackground,
            width: context.width,
            height: context.height,
          ),
        ),
        SingleChildScrollViewWithoutScroll(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MobileBody(
                  children: [
                    const SectionTitle(
                      paddingTop: 50,
                      paddingBottom: 16,
                      title: AppString.hiIamText,
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return constraints.maxWidth <
                                Breakpoints.presentationMobileSubtitle
                            ? const SizedBox.shrink()
                            : const SectionSubtitle(
                                paddingTop: 8,
                                paddingBottom: 8,
                                title: AppString.iamDeveloper,
                              );
                      },
                    ),
                    const GradientDivider(),
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Container(
                        height: 120,
                        width: 120,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 24),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AppAssets.profile,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: SectionText(
                          paddingTop: 24,
                          paddingBottom: 8,
                          isCentered: true,
                          title: AppString.developerQuote,
                        ),
                      ),
                    ),
                  ],
                ),
                PresentationDivider(itemScrollController),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
