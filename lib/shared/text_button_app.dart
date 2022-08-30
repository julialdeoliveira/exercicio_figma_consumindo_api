import 'package:flutter/material.dart';


class TextButtonApp extends StatelessWidget {
  final String title;
  final Widget route;
  const TextButtonApp({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => route,
            ),
          );
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.grey.shade200, fontSize: 23, decoration: TextDecoration.underline),
        ));
  }
}
