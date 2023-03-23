import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/breakpoints.dart';
import 'footer_exports.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.footer
            ? const FooterMobile()
            : const FooterWeb();
      },
    );
  }
}
