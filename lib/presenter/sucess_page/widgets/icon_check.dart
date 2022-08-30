import 'package:flutter/material.dart';

class IconCheck extends StatelessWidget {
  const IconCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.check,
      size: 200,
      color: Color.fromRGBO(140, 83, 227, 1),
    );
  }
}