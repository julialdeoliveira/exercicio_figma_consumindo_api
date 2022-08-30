import 'package:flutter/material.dart';
import 'package:initial_page/presenter/login_page/widgets/form_login.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: FormLogin(
        formKey: _formKey,
        emailController: emailController,
        passwordController: passwordController,
      ),
    );
  }
}
