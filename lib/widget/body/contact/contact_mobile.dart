import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../components/single_child_scroll_view_without_scroll.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/section_divider.dart';
import '../section/section_exports.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile(
    this.widget, {
    super.key,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.contactVerticalTexture,
            height: context.height,
            width: context.width,
          ),
        ),
        Positioned.fill(
          child: GradientWidget(
            radius: 1,
            opacity: 0.6,
            height: 400,
            width: context.width,
            alignment: Alignment.bottomCenter,
          ),
        ),
        SingleChildScrollViewWithoutScroll(
          child: Column(
            children: [
              MobileBody(
                children: [
                  SectionTitle(
                    paddingTop: 50,
                    paddingBottom: 20,
                    title: 'Test',
                  ),
                  SectionText(
                    paddingTop: 0,
                    paddingBottom: 45,
                    title: 'Test',
                  ),
                  widget,
                ],
              ),
              const SectionDivider(),
            ],
          ),
        ),
      ],
    );
  }
}
