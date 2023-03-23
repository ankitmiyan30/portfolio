import 'package:flutter/material.dart';

import '../../../../components/custom_text_button.dart';
import '../../dividers/contact_divider.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.subjectController,
    required this.messageController,
    required this.onPressed,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController subjectController;
  final TextEditingController messageController;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
              controller: nameController,
              hintText: 'Test',
              prefixIcon: Icons.account_circle,
              // validator: (value) => ContactValidators.name(value, context),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: emailController,
              hintText: "Test",
              // validator: (value) => ContactValidators.email(value, context),
              prefixIcon: Icons.mail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: subjectController,
              hintText: 'Test',
              prefixIcon: Icons.subject,
              // validator: (value) => ContactValidators.subject(value, context),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: messageController,
              hintText: 'Test',
              prefixIcon: Icons.comment,
              // validator: (value) => ContactValidators.message(value, context),
              maxLines: 2,
            ),
            const Center(
              child: ContactDivider(),
            ),
            Center(
              child: CustomTextButton(
                text: 'Test',
                onPressed: onPressed,
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
