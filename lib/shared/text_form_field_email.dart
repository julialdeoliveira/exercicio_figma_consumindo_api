import 'package:flutter/material.dart';

class TextFormFieldEmail extends StatelessWidget {
  const TextFormFieldEmail({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.email_outlined),
        hintText: 'Email',
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}