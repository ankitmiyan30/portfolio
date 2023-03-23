import 'package:flutter/material.dart';

import '../body_exports.dart';
import '../dividers/dividers_exports.dart';
import 'socical_exports.dart';

class SocialAllCardsMobile extends StatelessWidget {
  const SocialAllCardsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MobileBody(
          children: [
            TitleTextList(),
          ],
        ),
        SizedBox(height: 60),
        SectionDivider(),
      ],
    );
  }
}
