import 'package:flutter/material.dart';

import 'body_create_page.dart';

class FormCreateAccount extends StatelessWidget {
  const FormCreateAccount({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: BodyCreatePage(
          nameController: nameController,
          emailController: emailController,
          passwordController: passwordController,
          confirmPasswordController: confirmPasswordController,
          formKey: _formKey,
        ),
      ),
    );
  }
}
