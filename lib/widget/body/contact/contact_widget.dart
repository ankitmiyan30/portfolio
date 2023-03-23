import 'package:flutter/material.dart';

import '../../../core/responsive/breakpoints.dart';
import 'contact_mobile.dart';
import 'contact_web.dart';
import 'widgets/widgets.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();
    final subjectController = TextEditingController();

    Widget contactForm() {
      return CustomForm(
        formKey: formKey,
        nameController: nameController,
        emailController: emailController,
        subjectController: subjectController,
        messageController: messageController,
        onPressed: () {},
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final form = contactForm();

        return constraints.maxWidth < Breakpoints.contact
            ? ContactMobile(form)
            : ContactWeb(form);
      },
    );
  }
}
