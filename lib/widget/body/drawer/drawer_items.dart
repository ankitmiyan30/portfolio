import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../utils/utils_exports.dart';
import 'drawer_exports.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerTile(
          title: AppString.home,
          leading: Icons.home,
          index: 0,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppString.projects,
          leading: Icons.tips_and_updates,
          index: 1,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppString.experience,
          leading: Icons.receipt_long,
          index: 2,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppString.socialLinks,
          leading: Icons.link,
          index: 3,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppString.contact,
          leading: Icons.contact_mail,
          index: 4,
          itemScrollController: itemScrollController,
        ),
      ],
    );
  }
}
