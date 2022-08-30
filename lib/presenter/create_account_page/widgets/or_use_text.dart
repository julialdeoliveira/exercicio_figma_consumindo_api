import 'package:flutter/material.dart';

class OrUseText extends StatelessWidget {
  const OrUseText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "or use your email for registration",
      style: TextStyle(color: Colors.grey.shade200, fontSize: 20),
    );
  }
}