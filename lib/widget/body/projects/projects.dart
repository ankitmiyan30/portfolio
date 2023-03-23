import 'package:flutter/material.dart';

import '../../../core/responsive/breakpoints.dart';
import 'projects_exports.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.projects
            ? const ProjectsMobile()
            : const ProjectsWeb();
      },
    );
  }
}
