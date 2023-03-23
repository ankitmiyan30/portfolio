import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: AppColors.primaryDark,
      title: const SelectableText(
        'Ankit Miyan',
        style: TextStyle(
          letterSpacing: 1.5,
          fontSize: 20,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
