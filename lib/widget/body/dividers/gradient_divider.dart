import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';

class GradientDivider extends StatelessWidget {
  const GradientDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: AppGradients.divider,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
