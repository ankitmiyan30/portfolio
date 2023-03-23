import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../utils/utils_exports.dart';
import 'app_bar_exports.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: AppColors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WebAppBarTitle(
            title: AppString.home,
            index: 0,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppString.projects,
            index: 1,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppString.experience,
            index: 2,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppString.socialLinks,
            index: 3,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppString.contact,
            index: 4,
            itemScrollController: itemScrollController,
          ),
        ],
      ),
    );
  }
}
