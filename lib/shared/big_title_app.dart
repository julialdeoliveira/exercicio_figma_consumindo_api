import 'package:flutter/material.dart';

class BigTitleApp extends StatelessWidget {
  final String title;
  const BigTitleApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 40, color: Colors.white),
      textAlign: TextAlign.center,
    );
  }
}
