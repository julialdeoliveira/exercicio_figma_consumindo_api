import 'package:flutter/material.dart';

class YourRegistrationText extends StatelessWidget {
  const YourRegistrationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Your registration was sucessful and we have sent you a confirmation receipt to your email at:",
      style: TextStyle(color: Colors.grey.shade200, fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}