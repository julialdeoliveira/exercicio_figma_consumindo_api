import 'package:flutter/material.dart';
import 'package:initial_page/shared/text_form_field_email.dart';

import '../../../shared/big_title_app.dart';
import '../../../shared/elevated_button_app.dart';
import '../../../shared/row_icon.dart';
import '../../../shared/text_button_app.dart';
import '../../../shared/text_form_field_app.dart';
import '../../../shared/text_form_field_confirm_password.dart';
import '../../login_page/login_page.dart';
import '../../login_page/widgets/or_use_text.dart';
import '../../sucess_page/sucess_page.dart';

class BodyCreatePage extends StatelessWidget {
  const BodyCreatePage({
    Key? key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const BigTitleApp(title: 'Create Account'),
        const SizedBox(height: 20),
        const RowIcons(),
        const SizedBox(height: 40),
        const OrUseText(),
        const SizedBox(height: 20),
        TextFormFieldApp(nameController: nameController),
        const SizedBox(height: 10),
        TextFormFieldEmail(emailController: emailController),
        const SizedBox(height: 10),
        TextFormFieldConfirmPassword(
          controller: passwordController,
          secondController: confirmPasswordController,
        ),
        const SizedBox(height: 10),
        TextFormFieldConfirmPassword(
          controller: confirmPasswordController,
          secondController: passwordController,
        ),
        const SizedBox(height: 30),
        const ElevatedButtonApp(
          route: SucessPage(),
          title: 'SIGN UP',
        ),
        const SizedBox(height: 20),
        Text(
          "To keep connected with us please login with your personal info",
          style: TextStyle(color: Colors.grey.shade200, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        TextButtonApp(
          title: 'SIGN IN',
          route: LoginPage(),
        ),
      ],
    );
  }
}
