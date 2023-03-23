import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';

class ContactDivider extends StatelessWidget {
  const ContactDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 100,
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        gradient: AppGradients.divider,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
