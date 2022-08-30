import 'package:flutter/material.dart';

class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({
    Key? key,
    required this.nameController,
  }) : super(key: key);

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.person_outline),
        hintText: 'Name',
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}