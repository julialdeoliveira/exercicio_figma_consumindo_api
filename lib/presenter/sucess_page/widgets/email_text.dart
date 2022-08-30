import 'package:flutter/material.dart';

class EmailText extends StatelessWidget {
  const EmailText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'julialuciani@gmail.com',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
