import 'package:flutter/material.dart';

class TitleSucessText extends StatelessWidget {
  const TitleSucessText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Your registration was sucessful!",
      style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
