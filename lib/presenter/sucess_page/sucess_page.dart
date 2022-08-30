import 'package:flutter/material.dart';

import 'widgets/body_sucess_page.dart';

class SucessPage extends StatelessWidget {
  const SucessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: BodySucessPage(),
      ),
    );
  }
}

