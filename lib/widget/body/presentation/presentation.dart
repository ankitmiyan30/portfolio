import 'package:flutter/material.dart';
import 'package:my_portfolio/widget/body/presentation/presentation_mobile.dart';
import 'package:my_portfolio/widget/body/presentation/presentation_web.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../core/responsive/breakpoints.dart';

class Presentation extends StatelessWidget {
  const Presentation(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.presentation
            ? PresentationMobile(itemScrollController)
            : PresentationWeb(itemScrollController);
      },
    );
  }
}
