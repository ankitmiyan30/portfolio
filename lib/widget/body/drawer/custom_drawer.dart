import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../utils/utils_exports.dart';
import '../dividers/dividers_exports.dart';
import 'drawer_exports.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        right: Radius.circular(50),
      ),
      child: Drawer(
        backgroundColor: AppColors.background,
        surfaceTintColor: AppColors.transparent,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const CustomDrawerHeader(),
              const CustomDivider(.5, AppColors.primaryDark),
              DrawerItems(itemScrollController),
              const Spacer(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
