import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:initial_page/models/user_model.dart';
import 'package:initial_page/presenter/sucess_page/sucess_page.dart';
import 'package:initial_page/repositories/user_repository.dart';
import 'package:initial_page/shared/text_form_field_email.dart';

import '../../../shared/big_title_app.dart';
import '../../../shared/row_icon.dart';
import '../../../shared/text_button_app.dart';
import '../../../shared/text_form_field_app.dart';
import '../../../shared/text_form_field_confirm_password.dart';
import '../../login_page/login_page.dart';
import '../../login_page/widgets/or_use_text.dart';

final emailProvider = StateProvider<String>((ref) => '');

class BodyCreatePage extends HookConsumerWidget {
  const BodyCreatePage({
    Key? key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider.state);

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
        ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ref.watch(emailProvider.notifier).state = emailController.text;
                UserModel model = UserModel(
                  id: 0,
                  name: nameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                );
                UserRepository.createUser(model);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SucessPage(),
                  ),
                );
              }
            },
            child: const Text('SIGN UP')),
        // ElevatedButtonApp(
        //   route: const SucessPage(),
        //   title: 'SIGN UP',
        // ),
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
