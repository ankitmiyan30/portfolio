import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../components/gradient_widget.dart';
import '../../../components/image_asset_widget.dart';
import '../../../components/single_child_scroll_view_without_scroll.dart';
import '../../../utils/utils_exports.dart';
import '../body_exports.dart';
import '../dividers/dividers_exports.dart';
import '../section/section_exports.dart';

class MyWorkWeb extends StatelessWidget {
  const MyWorkWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.contactHorizontalTexture,
            height: context.height,
            width: context.width,
          ),
        ),
        Positioned.fill(
          left: 0,
          child: GradientWidget(
            opacity: 0.5,
            height: context.height,
            alignment: Alignment.centerLeft,
          ),
        ),
        Positioned.fill(
          right: 0,
          child: GradientWidget(
            opacity: 0.5,
            height: context.height,
            alignment: Alignment.centerRight,
          ),
        ),
        SingleChildScrollViewWithoutScroll(
          child: Column(
            children: [
              const WebBody(
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
