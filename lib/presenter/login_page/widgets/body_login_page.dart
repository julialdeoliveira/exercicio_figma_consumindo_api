import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:initial_page/presenter/create_account_page/create_account_page.dart';
import 'package:initial_page/presenter/home_page/home_page.dart';
import 'package:initial_page/shared/big_title_app.dart';
import 'package:initial_page/shared/text_button_app.dart';

import '../../../riverpod/user_provider.dart';
import '../../../shared/row_icon.dart';
import '../../../shared/text_form_field_email.dart';
import 'enter_text.dart';
import 'forget_text.dart';
import 'or_use_text.dart';

class BodyLoginPage extends HookConsumerWidget {
  const BodyLoginPage({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 60),
        const BigTitleApp(
          title: 'Sign In',
        ),
        const SizedBox(height: 20),
        const RowIcons(),
        const SizedBox(height: 60),
        const OrUseText(),
        const SizedBox(height: 20),
        TextFormFieldEmail(emailController: emailController),
        const SizedBox(height: 20),
        TextFormField(
          controller: passwordController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.lock_outline),
            hintText: 'Password',
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        const ForgotText(),
        const SizedBox(height: 80),
        ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ref.watch(userProvider.notifier).getUserInfo(emailController.text, passwordController.text);
                if (user!.name != "") {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                }
              }
            },
            child: const Text("SIGN IN")),
        const SizedBox(height: 40),
        const EnterText(),
        const SizedBox(height: 10),
        TextButtonApp(
          title: 'SIGN UP',
          route: CreateAccountPage(),
        )
      ],
    );
  }
}
