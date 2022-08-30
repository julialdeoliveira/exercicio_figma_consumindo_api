import 'package:flutter/material.dart';
import 'package:initial_page/presenter/create_account_page/widgets/form_create_account.dart';

class CreateAccountPage extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: FormCreateAccount(
        formKey: _formKey,
        nameController: nameController,
        emailController: emailController,
        passwordController: passwordController,
        confirmPasswordController: confirmPasswordController,
      ),
    );
  }
}
