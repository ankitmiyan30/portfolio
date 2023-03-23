import 'package:flutter/material.dart';

import '../body_exports.dart';
import '../dividers/dividers_exports.dart';
import 'socical_exports.dart';

class SocialAllCardsWeb extends StatelessWidget {
  const SocialAllCardsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          WebBody(
            children: [
              TitleTextList(isWeb: true),
            ],
          ),
          SizedBox(height: 60),
          SectionDivider(),
        ],
      ),
    );
  }
}
