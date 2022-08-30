import 'package:flutter/material.dart';
import 'package:initial_page/presenter/sucess_page/widgets/icon_check.dart';
import 'package:initial_page/presenter/sucess_page/widgets/title_sucess_text.dart';
import 'package:initial_page/presenter/sucess_page/widgets/your_registration_text.dart';

import '../../../shared/elevated_button_app.dart';
import '../../login_page/login_page.dart';
import 'email_text.dart';

class BodySucessPage extends StatelessWidget {
  const BodySucessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TitleSucessText(),
        const IconCheck(),
        const SizedBox(height: 30),
        const YourRegistrationText(),
        const SizedBox(height: 10),
        const EmailText(),
        const SizedBox(height: 50),
        ElevatedButtonApp(route: LoginPage(), title: 'SIGN IN'),
      ],
    );
  }
}






