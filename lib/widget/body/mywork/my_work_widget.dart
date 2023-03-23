import 'package:flutter/material.dart';

import '../../../core/responsive/breakpoints.dart';
import 'my_work_mobile.dart';
import 'my_work_web.dart';

class MyWorkWidget extends StatelessWidget {
  const MyWorkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.contact
            ? const MyWorkMobile()
            : const MyWorkWeb();
      },
    );
  }
}
