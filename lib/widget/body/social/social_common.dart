import 'package:flutter/material.dart';

import '../../../core/responsive/breakpoints.dart';
import 'socical_exports.dart';

class SocialCommon extends StatelessWidget {
  const SocialCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.social
            ? const SocialMobile()
            : const SocialWeb();
      },
    );
  }
}
