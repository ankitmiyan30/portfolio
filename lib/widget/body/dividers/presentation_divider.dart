import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../core/mixins/mixins.dart';
import '../../../utils/utils_exports.dart';
import 'dividers_exports.dart';

class PresentationDivider extends StatelessWidget with ScrollToMixin {
  const PresentationDivider(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return CustomDivider(
      2,
      AppColors.primary,
      margin: EdgeInsets.zero,
    );
  }
}
