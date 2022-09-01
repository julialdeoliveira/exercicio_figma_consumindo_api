import 'package:flutter/material.dart';

import 'body_login_page.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.emailController,
    required this.passwordController,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: BodyLoginPage(emailController: emailController, passwordController: passwordController, formKey: _formKey,),
        ),
      ),
    );
  }
}

