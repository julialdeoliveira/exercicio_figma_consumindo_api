import 'package:flutter/material.dart';

class ForgotText extends StatelessWidget {
  const ForgotText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Forgot your password?",
      style: TextStyle(color: Colors.grey.shade400, fontSize: 22, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}