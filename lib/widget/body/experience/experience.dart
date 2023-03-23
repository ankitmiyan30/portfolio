import 'package:flutter/material.dart';
import '../../../core/responsive/breakpoints.dart';
import 'experience_exports.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.experience
            ? const ExperienceMobile()
            : const ExperienceWeb();
      },
    );
  }
}
