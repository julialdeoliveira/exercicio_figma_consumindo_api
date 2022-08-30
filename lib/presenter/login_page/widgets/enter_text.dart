import 'package:flutter/material.dart';

class EnterText extends StatelessWidget {
  const EnterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Enter your personal details and start  journey with us",
      style: TextStyle(color: Colors.grey.shade200, fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}